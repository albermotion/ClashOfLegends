package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Jugador extends Entity
	{
		//Sprite sheet con todos las animaciones del personaje principal
		[Embed(source = "../imagenes/spriteSheet.png")]private const JUGADOR:Class;
		
		private var spriteJugador:Spritemap;
		
		//Constructor de la clase Jugador
		public function Jugador() 
		{
			
			spriteJugador = new Spritemap(JUGADOR, 450, 450);
			
			
			spriteJugador.add("andando", [0, 1, 4, 5, 2, 6, 3, 7], 6, true);
			spriteJugador.add("parado", [8,9,10,12,13,14], 5, true);
			
			graphic = spriteJugador;
			spriteJugador.play("parado");
			
		}
		
		
		//Actualizacion de todas las funciones que realiza el personaje
		override public function update():void 
		{
			movimientoJugador();
			
		}
		
		
		//Movimientos del personaje por la pantalla controlados por teclado
		private function movimientoJugador():void 
		{
			
			//DERECHA
			if (Input.check(Key.RIGHT))
			{
				spriteJugador.flipped = false;
				spriteJugador.play("andando");
				spriteJugador.x += 5;
				
			}
			else if (Input.released(Key.RIGHT))
			{
				spriteJugador.play("parado");
			}
			
			//IZQUIERDA
			if (Input.check(Key.LEFT))
			{
				spriteJugador.flipped = true;
				spriteJugador.play("andando");
				spriteJugador.x -= 5;
			}
			else if (Input.released(Key.LEFT))
			{
				spriteJugador.play("parado");
			}
			
			//ABAJO
			if (Input.check(Key.DOWN))
			{
				spriteJugador.play("andando");
				spriteJugador.y += 5;
			}
			else if (Input.released(Key.DOWN))
			{
				spriteJugador.play("parado");
			}
			
			//ARRIBA
			if (Input.check(Key.UP))
			{
				spriteJugador.play("andando");
				spriteJugador.y -= 5;
			}
			else if (Input.released(Key.UP))
			{
				spriteJugador.play("parado");
			}
			
			
			//IMPIDE QUE EL PERSONAJE SALGA DE LA PANTALLA
			if (spriteJugador.x + spriteJugador.width/2 +30 > FP.screen.width)
			{
				spriteJugador.x = FP.screen.width - spriteJugador.width/2 -30;
			}
			
			if (spriteJugador.x + spriteJugador.width/2 -30 < 0)
			{
				spriteJugador.x = 0 - spriteJugador.width/2 +30;
			}
			
			if (spriteJugador.y + spriteJugador.height/2 - 160 < 0)
			{
				spriteJugador.y = 0 - spriteJugador.height/2 + 160 ;
			}
			if (spriteJugador.y + spriteJugador.height - 30> FP.screen.height)
			{
				spriteJugador.y = FP.screen.height - spriteJugador.height + 30;
			}
		}
	}

}