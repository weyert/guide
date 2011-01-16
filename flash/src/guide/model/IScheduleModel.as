package guide.model {
	
	import guide.model.vo.IChannelDayProgramVO;
	
	/**
	 * Defines the implementation contract for the schedule model 
	 */	
	public interface IScheduleModel {
		
		/**
		 * Specifies the collection of channel programmes 
		 * 
		 * @return Vector.<IChannelDayProgramVO>
		 */		
	    function get channelProgrammes(): Vector.<IChannelDayProgramVO>;
	    function set channelProgrammes(value: Vector.<IChannelDayProgramVO>): void;
		
		/**
		 * Specifies the date of the schedule
		 *  
		 * @return Date
		 */		
		function get day(): Date;
		function set day(value: Date): void;
	}
}
