package guide.controller.events {
	
	import flash.events.Event;
	
	public class ApplicationEvent extends Event {
		
		public static const STARTED:String = "ApplicationEvent.appStarted";		
		public static const UPDATE:String = "ApplicationEvent.appUpdate";		
		
		public function ApplicationEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false ){
			super(type, bubbles, cancelable);		
		}

		override public function clone() : Event {
			return new ApplicationEvent(type, bubbles, cancelable);
		}
	}
}
