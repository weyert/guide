package nl.innerfuse.formatters.text
{
	public class StringUtils
	{
		
		public static function padLeft(input:String, pad:String, size:uint):String {
			var result: String = input;
			while ( result.length < size ) { 
				result = pad + result; 
			}
			
			return result;
		}		
	}
}