package guide.controller.commands {

	import guide.model.IScheduleModel;
	import guide.model.vo.ChannelDayProgramVOSupport;
	import guide.model.vo.ChannelVO;
	import guide.model.vo.IChannelDayProgramVO;
	import guide.model.vo.IProgramVO;
	
	import org.robotlegs.mvcs.Command;
	
	public class ConfigureModelsCommand extends Command {
		
		[Inject]
		public var scheduleModel: IScheduleModel;

		override public function execute(): void {
			var list: Vector.<IChannelDayProgramVO> = new Vector.<IChannelDayProgramVO>();
			list.push( createChannelProgramFor( "Nederland 1" ) );
			list.push( createChannelProgramFor( "Nederland 2" ) );
			list.push( createChannelProgramFor( "Nederland 3" ) );
			
			scheduleModel.day = new Date();
			scheduleModel.channelProgrammes = list;
		} 
		
		private function createChannelProgramFor(channelName: String): IChannelDayProgramVO {
			var channel: ChannelVO = new ChannelVO( channelName, channelName, null, "NLD", null );
			var dayProgram: IChannelDayProgramVO = new ChannelDayProgramVOSupport( channel, new Date(), 6 );
			return dayProgram;
		}
	}
}
