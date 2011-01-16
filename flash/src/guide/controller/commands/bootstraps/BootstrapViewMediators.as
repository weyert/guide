package guide.controller.commands.bootstraps {
	
	import guide.view.ApplicationView;
	import guide.view.ApplicationViewMediator;
	import guide.view.ChannelGridView;
	import guide.view.ChannelGridViewMediator;
	import guide.view.ChannelListView;
	import guide.view.ChannelListViewMediator;
	
	import org.robotlegs.mvcs.Command;
	
	public class BootstrapViewMediators extends Command {
		
		override public function execute(): void {
			mediatorMap.mapView(ApplicationView, ApplicationViewMediator);
			mediatorMap.mapView(ChannelListView, ChannelListViewMediator);
			mediatorMap.mapView(ChannelGridView, ChannelGridViewMediator);
		} 
	}
}