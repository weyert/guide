package {
	
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	
	import skins.TVGuideSkin;
	
	import guide.ApplicationContext;
	
	public class TVGuide extends Sprite {
		
		protected var _contextView: Sprite;
		protected var _context: ApplicationContext;

		public function TVGuide() {
			createNewContext();
			trace("TVGuide instantiated!");
		}
		
		protected function createNewContext(): void {
			_contextView = new Sprite();
			addChild(_contextView);
			_context = new ApplicationContext(_contextView);
		}
	}
}
