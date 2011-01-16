package {
	/**
	 * This file has been automatically created using
	 * #!/usr/bin/ruby script/generate suite
	 * If you modify it and run this script, your
	 * modifications will be lost!
	 */

	import asunit.framework.TestSuite;
	import guide.ApplicationContextTest;
	import guide.controller.commands.ConfigureModelsCommandTest;
	import guide.controller.commands.StartApplicationCommandTest;
	import guide.controller.commands.StartViewCommandTest;
	import guide.controller.events.ApplicationEventTest;
	import guide.model.ScheduleModelTest;
	import guide.model.vo.ChannelDayProgramBuilderTest;
	import guide.model.vo.ChannelDayProgramVOTest;
	import guide.model.vo.ChannelVOTest;
	import guide.model.vo.ProgramVOTest;
	import guide.view.ApplicationViewMediatorTest;
	import guide.view.ApplicationViewTest;
	import guide.view.ChannelGridViewMediatorTest;
	import guide.view.ChannelGridViewTest;
	import guide.view.ChannelListViewMediatorTest;
	import guide.view.ChannelListViewTest;

	public class AllTests extends TestSuite {

		public function AllTests() {
			addTest(new guide.ApplicationContextTest());
			addTest(new guide.controller.commands.ConfigureModelsCommandTest());
			addTest(new guide.controller.commands.StartApplicationCommandTest());
			addTest(new guide.controller.commands.StartViewCommandTest());
			addTest(new guide.controller.events.ApplicationEventTest());
			addTest(new guide.model.ScheduleModelTest());
			addTest(new guide.model.vo.ChannelDayProgramBuilderTest());
			addTest(new guide.model.vo.ChannelDayProgramVOTest());
			addTest(new guide.model.vo.ChannelVOTest());
			addTest(new guide.model.vo.ProgramVOTest());
			addTest(new guide.view.ApplicationViewMediatorTest());
			addTest(new guide.view.ApplicationViewTest());
			addTest(new guide.view.ChannelGridViewMediatorTest());
			addTest(new guide.view.ChannelGridViewTest());
			addTest(new guide.view.ChannelListViewMediatorTest());
			addTest(new guide.view.ChannelListViewTest());
		}
	}
}
