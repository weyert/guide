package guide.model.vo {

	import asunit.framework.TestCase;

	public class ProgramVOTest extends TestCase {

		private var instance: IProgramVO;
		
		private static const ID: String = "1";
		private static const TITLE: String = "Flikken Maastricht";
		private static const DESCRIPTION: String = "Police tv show";
		private static const START_TIME: Date = new Date( 2011, 0, 15, 21, 35, 0 );
		private static const END_TIME: Date = new Date( 2011, 0, 15, 22, 25, 0 );
		private static const LENGTH: int = 50;
		private static const CHANNEL: ChannelVO = new ChannelVO( "1", "Nederland 1", null, "NL", null );
		
		public function ProgramVOTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ProgramVO( ID, TITLE, DESCRIPTION, START_TIME, END_TIME, LENGTH, CHANNEL );
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("programVO is ProgramVO", instance is ProgramVO);
		}

		public function testIsIProgramVO():void {
			assertTrue("programVO is IProgramVO", instance is IProgramVO);
		}
		
		public function test_get_id(): void {
			assertEquals( "get id", ID, instance.id );
		}

		public function test_get_title(): void {
			assertEquals( "get title", TITLE, instance.title );
		}

		public function test_get_description(): void {
			assertEquals( "get description", DESCRIPTION, instance.description );
		}

		public function test_get_starttime(): void {
			assertEquals( "get start time", START_TIME.toString(), instance.startTime.toString() );
		}

		public function test_get_endtime(): void {
			assertEquals( "get end time", END_TIME.toString(), instance.endTime.toString() );
		}

		public function test_get_length(): void {
			assertEquals( "get length", LENGTH, instance.length );
		}

		public function test_get_channel(): void {
			assertEquals( "get channel", CHANNEL, instance.channel );
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}