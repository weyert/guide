package guide.controller.commands {

	import org.robotlegs.mvcs.Command;

	import asunit.framework.TestCase;

	public class ConfigureModelsCommandTest extends TestCase {
		private var instance:ConfigureModelsCommand;

		public function ConfigureModelsCommandTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ConfigureModelsCommand();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ConfigureModelsCommand", instance is ConfigureModelsCommand);
		}

		public function testIsCommand():void {
			assertTrue("instance is Command", instance is Command);
		}

		public function testExecute():void {
			assertTrue("Execute runs without error", (instance.execute() == void));
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}