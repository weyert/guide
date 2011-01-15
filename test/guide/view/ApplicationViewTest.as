package guide.view {

	import asunit.framework.TestCase;

	import flash.display.Sprite;

	public class ApplicationViewTest extends TestCase {
		private var instance:ApplicationView;

		public function ApplicationViewTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ApplicationView();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ApplicationView", instance is ApplicationView);
		}

		public function testIsSprite():void {
			assertTrue("instance is Sprite", instance is Sprite);
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}