package guide.model.vo
{
	public interface IChannelVO
	{
		
		/**
		 * Specifies the unique identifier of the channel
		 *  
		 * @return String
		 */		
		function get id(): String;
		
		/**
		 * Specifies the name of the channel
		 *  
		 * @return String
		 */		
 		function get name(): String;
		
		/**
		 * Specifies the description of the channel
		 *  
		 * @return String
		 */		
		function get description(): String;
		
		/**
		 * Specifies the country of origin of the channel
		 *  
		 * @return String
		 */		
		function get country(): String;
		
		/**
		 * Specifies the webpage of the channel
		 *  
		 * @return String
		 */		
		function get webpage(): String;
}
}