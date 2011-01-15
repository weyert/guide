package guide.controller.commands {

	import flash.display.Sprite;
	
	import guide.view.ApplicationView;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartViewCommand extends Command {
		
		override public function execute():void {
			var appView: Sprite = new ApplicationView();
			contextView.addChild( appView );
		}
	}
}
