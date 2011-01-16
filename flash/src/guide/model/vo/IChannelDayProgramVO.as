package guide.model.vo
{
	public interface IChannelDayProgramVO
	{
		
		/**
		 * Specifies the channel the day program belongs to
		 * 
		 * @return IChannelVO
		 */		
		function get channel(): IChannelVO;
		
		/**
		 * Specifies the associated day of the program
		 *  
		 * @return Date
		 */		
		function get day():Date;

		/**
		 * Specifies the programmes belonging to the day program
		 *  
		 * @return Vector.<IProgramVO>
		 */		
		function get programmes():Vector.<IProgramVO>;
	}
}