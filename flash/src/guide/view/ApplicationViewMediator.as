package guide.view {
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ApplicationViewMediator extends Mediator {
		
		public function ApplicationViewMediator() {
			super();
		} 
		
		override public function onRegister(): void {
			eventMap.mapListener( contextView, Event.ACTIVATE, onApplicationActivated );
			eventMap.mapListener( contextView, Event.DEACTIVATE, onApplicationDeactivated );
		}
		
		private function onApplicationActivated(event: Event):void
		{
			trace("ApplicationViewMediator.onApplicationActivated()");
		}
		
		private function onApplicationDeactivated(event: Event):void
		{
			trace("ApplicationViewMediator.onApplicationDeactivated()");
		}
		
		override public function onRemove(): void {
		}
	}
}
