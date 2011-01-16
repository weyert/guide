package guide.view {
	
	import flash.events.Event;
	
	import guide.controller.events.ApplicationEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ApplicationViewMediator extends Mediator {
		
		public function ApplicationViewMediator() {
			super();
		} 
		
		override public function onRegister(): void {
			eventMap.mapListener( contextView, Event.ACTIVATE, onApplicationActivated );
			eventMap.mapListener( contextView, Event.DEACTIVATE, onApplicationDeactivated );
		}
		
		override public function onRemove(): void {
			eventMap.unmapListener( contextView, Event.ACTIVATE, onApplicationActivated );
			eventMap.unmapListener( contextView, Event.DEACTIVATE, onApplicationDeactivated );
		}

		private function onApplicationActivated(event: Event):void
		{
			trace("ApplicationViewMediator.onApplicationActivated()");
			dispatch( new ApplicationEvent( ApplicationEvent.UPDATE ) );
		}
		
		private function onApplicationDeactivated(event: Event):void
		{
			trace("ApplicationViewMediator.onApplicationDeactivated()");
		}
	}
}
