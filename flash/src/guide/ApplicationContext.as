package guide {
	
	import flash.display.DisplayObjectContainer;
	
	import guide.controller.commands.StartApplicationCommand;
	import guide.controller.commands.bootstraps.BootstrapStartup;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	public class ApplicationContext extends Context {
		  
		/**
		 * Factory method. Provide the Context with the necessary objects to do its work.
		 * Note that the both the injector and reflector are programmed to interfaces
		 * so you can freely change the IoC container and Reflection library you want
		 * to use as long as the 'contract' is fullfilled. See the adapter package
		 * in the RobotLegs source.
		 *
		 * @param contextView DisplayObjectContainer
		 * @param autoStartup Boolean
		 *
		 */
		public function ApplicationContext(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true) {
			super(contextView, autoStartup);
		}
		
		/** 
		 * Gets called by the framework if autoStartup is true. Here we need to provide
		 * the framework with the basic actors. The proxies/services we want to use in
		 * the model, map some view components to Mediators and to get things started,
		 * add some Sprites to the stage. Only after we drop a Sprite on the stage,
		 * RobotLegs will create the Mediator. 
		 *
		 */
	    override public function startup():void
		{
			// Map some Commands to Events
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, BootstrapStartup, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartApplicationCommand, ContextEvent, true);
			
			// and we're done
			super.startup();
		}
	}
}