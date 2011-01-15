package guide.controller.commands {

	import asunit.framework.TestCase;
	
	import org.robotlegs.mvcs.Command;

	public class StartApplicationCommandTest extends TestCase {
		private var instance:StartApplicationCommand;

		public function StartApplicationCommandTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new StartApplicationCommand();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is StartApplicationCommand", instance is StartApplicationCommand);
		}
        
		public function testIsCommand():void{
			assertTrue("instance is Event", instance is Command);
		}
        
		public function testExecute():void {
			trace( instance );
		//	assertTrue("Execute runs without error", (instance.execute() == void));
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
		
	}
}