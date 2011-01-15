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
	import guide.view.ApplicationViewMediatorTest;
	import guide.view.ApplicationViewTest;

	public class AllTests extends TestSuite {

		public function AllTests() {
			addTest(new guide.ApplicationContextTest());
			addTest(new guide.controller.commands.ConfigureModelsCommandTest());
			addTest(new guide.controller.commands.StartApplicationCommandTest());
			addTest(new guide.controller.commands.StartViewCommandTest());
			addTest(new guide.controller.events.ApplicationEventTest());
			addTest(new guide.view.ApplicationViewMediatorTest());
			addTest(new guide.view.ApplicationViewTest());
		}
	}
}
