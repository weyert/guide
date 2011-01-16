package guide.model.vo {
	                                 
	import guide.model.vo.ProgramVO;
	
	public class ProgramVOSupport extends ProgramVO {
		
		// Testable constants
		public static const SHOW_TITLES: Array = [
			'Flikken Maastricht', 'Lie to Me', 'Castle', 'House',
			'Human Target', 'The Big Bang Theory', 'NOVA', 'Hustle'
		];
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		
		public function ProgramVOSupport(id: int=1, lastTime: Number=0, channel: IChannelVO=null) {			
			// pass constants to the super constructor for properties
			var d: Date= new Date();
			d.setTime( lastTime );

			var random: int = Math.floor(Math.random() * ( 1 + ( SHOW_TITLES.length - 1 ) - 0 ) ) + 0;
			var title: String = SHOW_TITLES[random] +  " #" + id.toString();
			var description: String = "Description of " + title;
			var delay: int = 0;
			var startTime: Date = new Date();
			startTime.setTime( lastTime );
			var offsetTime: int = Math.floor(Math.random() * ( 1 + 120 - 25 ) ) + 25;
			var endTime: Date = new Date();
			endTime.setTime( startTime.time );
			endTime.setMinutes( endTime.getMinutes() + offsetTime - delay);
			
			super( id.toString(), title, description, startTime, endTime, offsetTime - delay, channel );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden API
		//
		//--------------------------------------------------------------------------
		
		
	}
}
