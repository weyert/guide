package guide.model.vo {
	
	/**
	 * Stores the day schedule of programmes for a given channel
	 */	
	public class ChannelDayProgramVO implements IChannelDayProgramVO {
		
		protected var _day: Date;
		protected var _programmes: Vector.<IProgramVO>;
		protected var _channel: IChannelVO;
		
		/**
		 * Creates an instance of the ChannelDayProgramVO-class
		 *  
		 * @param channel		the associated channel
		 * @param programmes	the list of programmes
		 */		
		public function ChannelDayProgramVO(channel: IChannelVO, day: Date, programmes: Vector.<IProgramVO>) {
			_channel = channel;
			_day = day;
			_programmes = programmes;
		} 
		
		/**
		 * @inheritDoc 
		 */		
		public function get channel(): IChannelVO {
			return _channel;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function get day(): Date {
			return _day;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function get programmes(): Vector.<IProgramVO> {
			return _programmes;
		}
	}
}