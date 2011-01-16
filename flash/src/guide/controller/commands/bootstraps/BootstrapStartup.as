package guide.controller.commands.bootstraps {

	import guide.controller.commands.ConfigureModelsCommand;
	import guide.controller.commands.StartViewCommand;
	import guide.controller.events.ApplicationEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapStartup extends Command {
		
		override public function execute(): void {
			commandMap.mapEvent(ApplicationEvent.STARTED, BootstrapModels, ApplicationEvent, true);
			commandMap.mapEvent(ApplicationEvent.STARTED, BootstrapViewMediators, ApplicationEvent, true);
			commandMap.mapEvent(ApplicationEvent.STARTED, StartViewCommand, ApplicationEvent, true);
			commandMap.mapEvent(ApplicationEvent.STARTED, ConfigureModelsCommand, ApplicationEvent, true);
		} 
	}
}
