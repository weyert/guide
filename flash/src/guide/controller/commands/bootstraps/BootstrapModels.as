package guide.controller.commands.bootstraps {
	
	import guide.model.IScheduleModel;
	import guide.model.ScheduleModel;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapModels extends Command {
		
		override public function execute(): void {
			injector.mapSingletonOf( IScheduleModel, ScheduleModel );
		}
	}
}
