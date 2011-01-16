package guide.view {
	
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import guide.model.vo.IChannelDayProgramVO;
	import guide.model.vo.IProgramVO;
	
	public class ChannelGridView extends Sprite {
		
		private var _channelPrograms: Vector.<IChannelDayProgramVO>;

		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		/**
		 * Event handling takes place via the mediator: ChannelGridViewMediator 
		 * 
		 */
		
		public function ChannelGridView() {	
			super();
			initialise();
		} 
		
		protected function initialise():void
		{
			createChildren();
		}
		
		protected function createChildren():void
		{
			trace("ChannelGridView.createChildren()");
		}
		
		/**
		 * Returns the total time consumed of all programmes of the channel in minutes
		 *  
		 * @return int
		 */		
		protected function getProgrammesLength(channelProgram: IChannelDayProgramVO): int {
			var result: int = 0;
			for each ( var program: IProgramVO in channelProgram.programmes ) {
				result += program.length;
			}			
			
			return result;
		}

		public function updateList(channelPrograms: Vector.<IChannelDayProgramVO>):void
		{
			_channelPrograms = channelPrograms;
			createItems();
		}
		
		private function createItems(): void {
			var newY: int = 0;
			var channelGroup: Sprite;
			for each ( var channelProgram: IChannelDayProgramVO in _channelPrograms) {
				channelGroup = new Sprite();
				channelGroup.y = newY;
				createChannelItems( channelGroup, channelProgram );
				addChild( channelGroup );
				
				newY += channelGroup.height + 4;
			}
		}
		
		private function createChannelItems(group: Sprite, channelProgram: IChannelDayProgramVO): void {
			var shape: Sprite;
			var showTitleTextField: TextField;
			
			var totalLength: int = this.getProgrammesLength( channelProgram );
			var perMinute: Number = 1024 / totalLength;
			
			var newX: int = 0;
			for each ( var program: IProgramVO in channelProgram.programmes ) {
				var programWidth: int = perMinute * program.length;
				
				shape = new Sprite();
				shape.graphics.beginFill( Math.random() * 0xFFFFFF, 1 );
				shape.graphics.drawRect( 0, 0, programWidth, 75 );
				shape.graphics.endFill();
				group.addChild( shape );
				shape.x = newX;
				
				showTitleTextField = new TextField();
				showTitleTextField.textColor = 0xFFFFFF;
				showTitleTextField.border = false;
				showTitleTextField.autoSize = TextFieldAutoSize.LEFT;
				showTitleTextField.text = program.title;
				var textWidth: int = showTitleTextField.width;
				showTitleTextField.autoSize = TextFieldAutoSize.NONE;
				
				//
				var textPos: int = ( ( programWidth - textWidth ) / 2 );
				if ( programWidth < textWidth ) {
					textPos = 4;
					showTitleTextField.width = programWidth;
				}
				
				showTitleTextField.x = newX + textPos;				
				group.addChild( showTitleTextField );
				showTitleTextField.y = ( 75 - showTitleTextField.height ) / 2;
				
				newX += programWidth;
			}
		}
		
		
		
	}
}
