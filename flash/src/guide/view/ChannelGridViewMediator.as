package guide.view {
	
	import guide.controller.events.ApplicationEvent;
	import guide.model.IScheduleModel;
	import guide.model.vo.IChannelDayProgramVO;
	import guide.view.ChannelGridView;
	
	import org.robotlegs.core.IRelaxedEventMap;
	import org.robotlegs.mvcs.Mediator;
	
	public class ChannelGridViewMediator extends Mediator {
		
		// declare the view to be injected
		[Inject]
		public var view:ChannelGridView;
		
		// temporary, not sure what the best way is to deal with it
		[Inject]
		public var model: IScheduleModel;
		
		[Inject]
		public var relaxedEventMap: IRelaxedEventMap;

		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * Avoid doing work in the constructor!
		 * onRegister() is the place to do things. 
		 * 
		 */
		
		public function ChannelGridViewMediator() {			
			// Try not to put stuff in the constructor of the mediator
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden API
		//
		//--------------------------------------------------------------------------
		/**
		 * Initialize the view and register for events. 
		 * 
		 */
		override public function onRegister():void
		{			
			// temporary hack
			relaxedEventMap.mapRelaxedListener( ApplicationEvent.UPDATE, onViewUpdate );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event Handlers
		//
		//--------------------------------------------------------------------------
		
		private function onViewUpdate(event: ApplicationEvent): void
		{	
			view.updateList( model.channelProgrammes );
		}
	}
}
