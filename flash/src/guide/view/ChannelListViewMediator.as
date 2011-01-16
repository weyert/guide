package guide.view {
	
	import guide.controller.events.ApplicationEvent;
	import guide.model.IScheduleModel;
	import guide.model.vo.IChannelDayProgramVO;
	import guide.view.ChannelListView;
	
	import org.robotlegs.core.IRelaxedEventMap;
	import org.robotlegs.mvcs.Mediator;
	
	public class ChannelListViewMediator extends Mediator {
		
		// declare the view to be injected
		[Inject]
		public var view:ChannelListView;
		
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
		
		public function ChannelListViewMediator() {			
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

		private function onViewUpdate(event: ApplicationEvent): void
		{	
			var channelProgram: IChannelDayProgramVO = model.channelProgrammes[ 0 ];
			view.updateList( channelProgram );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event Handlers
		//
		//--------------------------------------------------------------------------
		
	}
}
