package guide.model {
	import guide.model.vo.IChannelDayProgramVO;
	
	/**
	 * Stores the data for a guide schedule
	 */	
	public class ScheduleModel implements IScheduleModel {
		
		protected var _channelProgrammes: Vector.<IChannelDayProgramVO>;
		protected var _day: Date;
		
		/**
		 * Creates an instance of the SchedulerModel-class 
		 */		
		public function ScheduleModel() {
			super();
		} 
		
		/**
		 * @inheritDoc 
		 */		
		public function get channelProgrammes(): Vector.<IChannelDayProgramVO> {
			return _channelProgrammes;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function set channelProgrammes(value: Vector.<IChannelDayProgramVO>): void {
			_channelProgrammes = value;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function set day(value: Date): void {
			_day = value;
		}
		
		/**
		 * @inheritDoc 
		 */		
		public function get day(): Date {
			return _day;
		}
	}
}
