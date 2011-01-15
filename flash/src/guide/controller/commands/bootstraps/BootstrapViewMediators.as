package guide.controller.commands.bootstraps {
	
	import guide.view.ApplicationViewMediator;
	import guide.view.ApplicationView;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewMediators extends Command {
		
		override public function execute(): void {
			mediatorMap.mapView(ApplicationView, ApplicationViewMediator);
		} 
	}
}
