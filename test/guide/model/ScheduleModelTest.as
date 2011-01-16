package guide.model {

	import asunit.framework.TestCase;

	public class ScheduleModelTest extends TestCase {
		
		private var instance:ScheduleModel;

		public function ScheduleModelTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ScheduleModel();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ScheduleModel", instance is ScheduleModel);
		}
		
		public function testIsIChannelModel(): void {
			assertTrue("instance is IScheduleModel", instance is IScheduleModel);
		}

		public function testFailure():void {
			assertTrue("Failing test", false);
		}
	}
}