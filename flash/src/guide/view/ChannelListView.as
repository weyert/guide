package guide.view {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import guide.model.vo.IChannelDayProgramVO;
	import guide.model.vo.IProgramVO;
	
	import nl.innerfuse.formatters.text.StringUtils;
	
	public class ChannelListView extends Sprite {
		
		private var _dayProgram: IChannelDayProgramVO;
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * Event handling takes place via the mediator: ChannelListViewMediator 
		 * 
		 */
		
		public function ChannelListView() {			
			initialise();
		} 
		
		protected function initialise():void
		{
			createChildren();
		}
		
		protected function createChildren():void
		{
			trace("ChannelListView.createChildren()");
		}
		
		/**
		 * Updates the view the channel program
		 *  
		 * @param model	the channel program
		 */		
		public function updateList(model: IChannelDayProgramVO): void {
			_dayProgram = model;
			createItems();
		}

		private function createItems():void
		{
			var field: TextField;
			
			var newY: int = 0;
			for each ( var program: IProgramVO in _dayProgram.programmes ) {
				field = new TextField();
				field.autoSize = TextFieldAutoSize.LEFT;
				field.selectable = false;
				field.multiline = true;
				
				var timeStr: String = StringUtils.padLeft( program.startTime.hours.toString(), "0", 2 );
				timeStr += ":" + StringUtils.padLeft( program.startTime.minutes.toString(), "0", 2 );
				field.htmlText = timeStr + "\n" + "<b>" + program.title + "</b> (" + program.length + ")";
				field.y = newY;
				addChild( field );
				
				newY += field.height + 10;
			}			
		}
	}
}