package guide.model.vo
{
	public interface IProgramVO
	{
		
		/**
		 * Specifies the unique identifier of the programme
		 *  
		 * @return String
		 */		
		function get id():String;

		/**
		 * Specifies the title of the programme
		 *  
		 * @return String
		 */		
		function get title():String;
		
		/**
		 * Specifies the description of the programme
		 *  
		 * @return String
		 */		
		function get description():String;
		
		/**
		 * Specifies the start time of the programme
		 *  
		 * @return String
		 */		
		function get startTime(): Date;

		/**
		 * Specifies the end time of the programme
		 *  
		 * @return String
		 */		
		function get endTime(): Date;
		
		/**
		 * Specifies the duration of the programme in minutes 
		 * 
		 * @return int
		 */		
		function get length():int;
		
		/**
		 * Specifies the channel the programme belongs to
		 *  
		 * @return ChannelVO
		 */		
		function get channel(): IChannelVO;
	}
}