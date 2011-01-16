package guide.view {

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Mediator;
	import flash.events.EventDispatcher;

	public class ChannelGridViewMediatorTest extends TestCase {
		private var instanceMediator:ChannelGridViewMediator;

		public function ChannelGridViewMediatorTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instanceMediator = new ChannelGridViewMediator();
			instanceMediator.view = new ChannelGridView();
			instanceMediator.eventDispatcher = new EventDispatcher();
			instanceMediator.onRegister();
		}

		override protected function tearDown():void {
			super.tearDown();
			instanceMediator = null;
		}

		public function testInstantiated():void {
			assertTrue("instanceMediator is ChannelGridViewMediator", instanceMediator is ChannelGridViewMediator);
		}
        
		public function testIsMediator():void{
			assertTrue("instanceMediator is robotlegs Mediator", instanceMediator is Mediator);
		}

		public function testFailure():void {
			assertTrue("Failing test", false);
		}
		
	}
}