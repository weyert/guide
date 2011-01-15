package guide {

	import asunit.framework.TestCase;

	import org.robotlegs.mvcs.Context;

	public class ApplicationContextTest extends TestCase {
		private var instance:ApplicationContext;

		public function ApplicationContextTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ApplicationContext();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ApplicationContext", instance is ApplicationContext);
		}
		
		public function testIsContext():void{
			assertTrue("instance is robotlegs Context", instance is Context);
		}		

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}