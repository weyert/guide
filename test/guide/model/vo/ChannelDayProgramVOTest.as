package guide.model.vo {

	import asunit.framework.TestCase;
	
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	import mockolate.nice;
	import mockolate.prepare;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.core.allOf;

	public class ChannelDayProgramVOTest extends TestCase {

		private static const DAY:Date = new Date( 2011, 0, 15, 21, 00 );

		private var instance:IChannelDayProgramVO;
		private var channel: IChannelVO;
		private var program: IProgramVO;
		private var programmesList: Vector.<IProgramVO>;

		public function ChannelDayProgramVOTest(methodName:String=null) {
			super(methodName)
		}
		
		override public function run():void {
			var mockolateMaker:IEventDispatcher = prepare(IChannelVO);
			mockolateMaker.addEventListener(Event.COMPLETE, hasPreparedChannelVO);
		}
		
		private function hasPreparedChannelVO(event: Event): void {
			IEventDispatcher(event.target).removeEventListener(Event.COMPLETE, hasPreparedChannelVO);			
			
			var mockolateMaker:IEventDispatcher = prepare(IProgramVO);
			mockolateMaker.addEventListener(Event.COMPLETE, hasPreparedProgramVO);
		}

		private function hasPreparedProgramVO(event: Event): void {
			IEventDispatcher(event.target).removeEventListener(Event.COMPLETE, hasPreparedChannelVO);	
			
			super.run();
		}
		
		override protected function setUp():void {
			super.setUp();
			// prepare mocked objects
			program = nice(IProgramVO);
			channel = nice(IChannelVO);
			programmesList = new Vector.<IProgramVO>();
			programmesList.push( program );

			// prepare the ChannelDayProgramVO object
			instance = new ChannelDayProgramVO( channel, DAY, programmesList );
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ChannelDayProgramVO", instance is ChannelDayProgramVO);
		}

		public function testIsIChannelDayProgramVO():void {
			assertTrue("instance is IChannelDayProgramVO", instance is IChannelDayProgramVO);
		}
		
		public function get_program(): void {
			assertEquals( "get channel", channel, instance.channel );
		}
		
		public function get_day(): void {
			assertEquals( "get day", DAY.toString(), instance.day.toString() );
		}
		
		public function get_list(): void {
			assertNotNull( "get list not null", instance.programmes );
			assertEquals( "check list has one item", 1, instance.programmes.length );
			assertThat( "get list has program vo", instance.programmes, allOf(IProgramVO) ); 
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}