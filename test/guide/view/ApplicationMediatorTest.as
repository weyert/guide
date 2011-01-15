package guide.view {

	import asunit.framework.TestCase;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationMediatorTest extends TestCase {
		private var instance:ApplicationMediator;

		public function ApplicationMediatorTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ApplicationMediator();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ApplicationMediator", instance is ApplicationMediator);
		}

		public function testIsMediator():void {
			assertTrue("instance is Mediator", instance is Mediator);
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}