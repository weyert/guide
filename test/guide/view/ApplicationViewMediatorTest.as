package guide.view {

	import asunit.framework.TestCase;

	import org.robotlegs.mvcs.Mediator;

	public class ApplicationViewMediatorTest extends TestCase {
		private var instance:ApplicationViewMediator;

		public function ApplicationViewMediatorTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ApplicationViewMediator();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ApplicationViewMediator", instance is ApplicationViewMediator);
		}

		public function testIsMediator():void {
			assertTrue("instance is Mediator", instance is Mediator);
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}