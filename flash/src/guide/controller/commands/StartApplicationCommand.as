package guide.controller.commands {
	
	import guide.controller.events.ApplicationEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartApplicationCommand extends Command {		
		
		//--------------------------------------
		//  CONSTRUCTOR
		//--------------------------------------

		
		//--------------------------------------
		//  GETTER/SETTERS
		//--------------------------------------
		
		//--------------------------------------
		//  PUBLIC METHODS
		//--------------------------------------

		override public function execute() : void {
			var event: ApplicationEvent = new ApplicationEvent( ApplicationEvent.STARTED );
			dispatch( event );
		}
		
		//--------------------------------------
		//  PRIVATE VARIABLES
		//--------------------------------------
		
	}
}
