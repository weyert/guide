package guide.model.vo {

	import asunit.framework.TestCase;

	public class ChannelVOTest extends TestCase {
		
		private var instance:ChannelVO;
		
		private static const ID: String = "1";
		private static const NAME: String = "Nederland 1";
		private static const DESCRIPTION: String = "Description of Nederland 1";
		private static const COUNTRY: String = "The Netherlands";
		private static const WEBPAGE: String = "http://www.nederland1.nl";
		
		public function ChannelVOTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ChannelVO( ID, NAME, DESCRIPTION, COUNTRY, WEBPAGE );
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ChannelVO", instance is ChannelVO);
		}
		
		public function testIsIChannelVO():void {
			assertTrue("instance is IChannelVO", instance is IChannelVO);
		}

		public function test_get_id():void {
			assertEquals("Get id", ID, instance.id);
		}		
		
		public function test_get_name():void {
			assertEquals("Get name", NAME, instance.name);
		}

		public function test_get_description():void {
			assertEquals("Get description", DESCRIPTION, instance.description);
		}

		public function test_get_country():void {
			assertEquals("Get country", COUNTRY, instance.country);
		}

		public function test_get_webpage():void {
			assertEquals("Get webpage", WEBPAGE, instance.webpage);
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}