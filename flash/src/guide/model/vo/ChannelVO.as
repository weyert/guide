package guide.model.vo {
	
	/**
	 * Stores the channel information
	 */	
	public class ChannelVO implements IChannelVO {
		
		protected var _id: String;
		protected var _name: String;
		protected var _description: String
		protected var _country: String;
		protected var _webpage: String;
		
		/**
		 * Creates an instance of the ChannelVO-class
		 *  
		 * @param id			the unique identifier of the channel
		 * @param name			the name of the channel
		 * @param description	the description of the channel
		 * @param country		the country of origin of the channel
		 * @param webpage		the webpage of the channel
		 * 
		 */		
		public function ChannelVO(id: String, name: String, description: String, country: String, webpage: String) {
			_id = id;
			_name = name;
			_description = description;
			_country = country;
			_webpage = webpage;
		} 
				
		/**
		 * @inheritDoc 
		 */		
		public function get id(): String
		{
			return _id;
		}
						
		/**
		 * @inheritDoc 
		 */		
		public function get name(): String
		{
			return _name;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get description(): String
		{
			return _description;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get country(): String
		{
			return _country;
		}

		/**
		 * @inheritDoc 
		 */		
		public function get webpage(): String
		{
			return _webpage;
		}		
	}
}
