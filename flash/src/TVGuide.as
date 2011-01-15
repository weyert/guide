package {
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	import skins.TVGuideSkin;
	
	public class TVGuide extends Sprite {

		public function TVGuide() {
			addChild(new TVGuideSkin.ProjectSprouts() as DisplayObject);
			trace("TVGuide instantiated!");
		}
	}
}
