package guide.model.vo {

	import asunit.framework.TestCase;

	public class ChannelDayProgramBuilderTest extends TestCase {
		
		private var instance:ChannelDayProgramBuilder;

		public function ChannelDayProgramBuilderTest(methodName:String=null) {
			super(methodName)
		}

		override protected function setUp():void {
			super.setUp();
			instance = new ChannelDayProgramBuilder();
		}

		override protected function tearDown():void {
			super.tearDown();
			instance = null;
		}

		public function testInstantiated():void {
			assertTrue("instance is ChannelDayProgramBuilder", instance is ChannelDayProgramBuilder);
		}
		
		public function test_withoutAlternation_returns_vo_with_empty_values(): void {
			var item: ChannelDayProgramVO = instance.build();
			assertEquals( "check day is null", null, item.day );
			assertEquals( "check channel is null", null, item.channel );
			assertEquals( "check programmes is empty", 0, item.programmes.length );
		}

		public function testFailure():void {
			assertTrue("Failing test", true);
		}
	}
}