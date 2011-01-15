package guide.controller.commands.bootstraps {

	import guide.controller.events.ApplicationEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapStartup extends Command {
		
		override public function execute(): void {
			trace("BootstrapStartup.execute(): commandMap=" + commandMap);
//			commandMap.mapEvent(ApplicationEvent.STARTED, BootstrapModels, ApplicationEvent, true);
//			commandMap.mapEvent(ApplicationEvent.STARTED, BootstrapViewMediators, ApplicationEvent, true);
		} 
	}
}
