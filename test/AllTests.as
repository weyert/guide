package {
	/**
	 * This file has been automatically created using
	 * #!/usr/bin/ruby script/generate suite
	 * If you modify it and run this script, your
	 * modifications will be lost!
	 */

	import asunit.framework.TestSuite;
	import guide.ApplicationContextTest;
	import guide.view.ApplicationMediatorTest;
	import guide.view.ApplicationViewTest;

	public class AllTests extends TestSuite {

		public function AllTests() {
			addTest(new guide.ApplicationContextTest());
			addTest(new guide.view.ApplicationMediatorTest());
			addTest(new guide.view.ApplicationViewTest());
		}
	}
}
