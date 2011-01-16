package guide.model.vo {
	                                 
	import guide.model.vo.ChannelDayProgramVO;
	
	public class ChannelDayProgramVOSupport extends ChannelDayProgramVO {
		
		// Testable constants
		//public static const MY_CONST:String = 'myConstant';
		
		//--------------------------------------------------------------------------
		//
		//  Initialization
		//
		//--------------------------------------------------------------------------
		
		public function ChannelDayProgramVOSupport(channel: ChannelVO, date: Date, totalPrograms: int=1) {			
			// pass constants to the super constructor for properties
			var list: Vector.<IProgramVO> = new Vector.<IProgramVO>();
			var length: uint = totalPrograms;
			
			var lastTime: Date = new Date( 2011, 0, 15, 19, 0, 0 );
			for ( var i: int=0; i < length; i++ ) {
				var program: IProgramVO = new ProgramVOSupport( i + 1, lastTime.time );
				list.push( program );
				lastTime = new Date();
				lastTime.time = program.endTime.time;
			}
			
			super( channel, date, list );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overridden API
		//
		//--------------------------------------------------------------------------
		
		
	}
}
