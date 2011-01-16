package guide.model.vo
{
	public class ChannelDayProgramBuilder
	{
		protected var _channel: ChannelVO;
		protected var _day: Date;
		protected var _programmes: Vector.<IProgramVO>;
		
		public function ChannelDayProgramBuilder() {
			_programmes = new Vector.<IProgramVO>();
		}
		
		public function forDay(value: Date): ChannelDayProgramBuilder {
			_day = value;
			return this;
		}
		
		public function belongsTo(channel: ChannelVO): ChannelDayProgramBuilder {
			_channel = channel;
			return this;
		}
		
		public function addProgramme(program: ProgramVO): ChannelDayProgramBuilder {
			_programmes.push( program );
			return this;
		}
		
		public function build(): ChannelDayProgramVO {
			return new ChannelDayProgramVO( _channel, _day, _programmes );
		}
	}
}