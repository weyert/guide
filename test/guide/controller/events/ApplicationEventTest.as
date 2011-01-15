package guide.controller.events {
	
	import flash.events.Event;
	
	import asunit.framework.TestCase;

	public class ApplicationEventTest extends TestCase {
		
		private var appEvent:ApplicationEvent;

		public function ApplicationEventTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			appEvent = new ApplicationEvent( 'testEvent' );
		}

		override protected function tearDown():void {
			super.tearDown();
			appEvent = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ApplicationEvent", appEvent is ApplicationEvent);
		}

		public function testIsEvent():void {
			assertTrue("instance is Event", appEvent is Event);
		}
		
        public function testCloneReturnsSameEvent():void{
	    	var eventType:String = "testEvent";
			var clone: ApplicationEvent = appEvent.clone() as ApplicationEvent;
			assertTrue("ApplicationEvent can be cloned to correct class", clone is ApplicationEvent);
			assertTrue("ApplicationEvent clone retains event type", clone.type == "testEvent");
		}
		
		public function testEventStrings():void{
		   	assertTrue("ApplicationEvent.STARTED has correct string", ApplicationEvent.STARTED == 'ApplicationEvent.appStarted');
		}		

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}