package guide.view {

	import asunit.framework.TestCase;
	
	import flash.display.Sprite;

	public class ChannelGridViewTest extends TestCase {
		private var instance:ChannelGridView;

		public function ChannelGridViewTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ChannelGridView();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ChannelGridView", instance is ChannelGridView);
		}
        
		public function testIsSprite():void{
			assertTrue("instance is Sprite", instance is Sprite);
		}

		public function testFailure():void {
			assertTrue("Failing test", false);
		}
		
	}
}