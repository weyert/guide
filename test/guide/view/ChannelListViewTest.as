package guide.view {

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class ChannelListViewTest extends TestCase {
		private var instance:ChannelListView;

		public function ChannelListViewTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ChannelListView();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ChannelListView", instance is ChannelListView);
		}
        
		public function testIsSprite():void{
			assertTrue("instance is Sprite", instance is Sprite);
		}

		public function testFailure():void {
			assertTrue("Failing test", false);
		}
		
	}
}