package guide.controller.commands {

	import asunit.framework.TestCase;
	
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	import guide.model.IScheduleModel;
	
	import mockolate.nice;
	import mockolate.prepare;
	
	import org.robotlegs.mvcs.Command;

	public class ConfigureModelsCommandTest extends TestCase {
		private var instance:ConfigureModelsCommand;

		public function ConfigureModelsCommandTest(methodName:String=null) {
			super(methodName)
		}

		override public function run():void{
			var mockolateMaker:IEventDispatcher = prepare(IScheduleModel);
			mockolateMaker.addEventListener(Event.COMPLETE, prepareCompleteHandler);
		}
		
		private function prepareCompleteHandler(e:Event):void{
			IEventDispatcher(e.target).removeEventListener(Event.COMPLETE, prepareCompleteHandler);
			super.run();
		}
		
		override protected function setUp():void {
			super.setUp();
			instance = new ConfigureModelsCommand();
			instance.scheduleModel = nice(IScheduleModel);
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