package 
{

	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine 
	{
		[SWF(width="1200", height="768", backgroundColor="#FFFFFF")]
		public function Main():void 
		{
			super(800, 600, 60, false);
						
			FP.world = new Mundo;
			FP.console.enable();
		}
		
	}
	
}