package guide.view {
	
	import flash.display.Shape;
	import flash.display.Sprite;
	
	public class ApplicationView extends Sprite {
		
		protected var _background: Shape;
		protected var _channelListView: ChannelListView;
		protected var _channelGridView: ChannelGridView;

		public function ApplicationView() {
			super();
			initialise();
		} 

		protected function initialise():void
		{
			createChildren();
		}

		protected function createChildren():void
		{
			createBackground();
			
			_channelListView = new ChannelListView();
			addChild( _channelListView );

			_channelGridView = new ChannelGridView();
			addChild( _channelGridView );
			_channelGridView.y = 600 / 2;
		}
		
		protected function createBackground(): void {
			_background = new Shape();
			_background.graphics.beginFill( 0xCCCCCC, 1 );
			_background.graphics.drawRect( 0, 0, 1024, 600 );
			_background.graphics.endFill();
			addChild( _background );
		}
	}
}
