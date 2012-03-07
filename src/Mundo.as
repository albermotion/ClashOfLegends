package  
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	public class Mundo extends World 
	{
		
		private var jugador:Jugador;
		
		
		public function Mundo() 
		{
			FP.screen.color = 0xffffff;
			jugador = new Jugador();
			add(jugador);
		}
		
	}

}