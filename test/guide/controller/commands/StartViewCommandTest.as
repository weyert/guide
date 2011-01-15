package guide.controller.commands {

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;
	
	import org.robotlegs.mvcs.Command;

	public class StartViewCommandTest extends TestCase {
		private var instance:StartViewCommand;

		public function StartViewCommandTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new StartViewCommand();
			instance.contextView = new Sprite();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is StartViewCommand", instance is StartViewCommand);
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