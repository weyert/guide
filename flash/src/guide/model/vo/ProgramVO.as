package guide.model.vo {
	
	/**
	 * Stores information about one specific programme of a channel
	 */	
	public class ProgramVO implements IProgramVO {
		
		protected var _id: String;
		protected var _title: String;
		protected var _description: String;
		protected var _startTime: Date;
		protected var _endTime: Date;
		protected var _length: int;
		protected var _channel: IChannelVO;
		
		/**
		 * Creates an instance of the ProgramVO-class
		 *  
		 * @param id			the unique identifier of the programme
		 * @param title			the title of the programme
		 * @param description	the description of the programme
		 * @param startTime		the start time of the programme
		 * @param endTime		the end time of the programme
		 * @param length		the duration of the programme in minutes
		 * @param channel		the channel the programme belongs to
		 */		
		public function ProgramVO(id: String, title: String, description: String, startTime: Date,
			endTime: Date, length: int, channel: IChannelVO) {
			_id = id;
			_title = title;
			_description = description;
			_startTime = startTime;
			_endTime = endTime;
			_length = length;
			_channel = channel;
		} 
		
		/**
		 * @inheritDoc 
		 */		
		public function get id(): String {
			return _id;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get title(): String {
			return _title;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get description(): String {
			return _description;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get startTime(): Date {
			return _startTime;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get endTime(): Date {
			return _endTime;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function get length(): int {
			return _length;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function get channel(): IChannelVO {
			return _channel;
		}
	}
}
