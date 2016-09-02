package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Nave extends FlxSprite
{

	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(32, 32);
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if(FlxG.keys.pressed.RIGHT){
			x += 4;
		}
		if(FlxG.keys.pressed.LEFT){
			x -= 4;
		}
		if(FlxG.keys.pressed.UP){
			y -= 4;
		}
		if(FlxG.keys.pressed.DOWN){
			y += 4;
		}
		if (FlxG.keys.justPressed.X) {
			var b:Bullet = new Bullet();
			b.x = x + width;
			b.y = y + height / 2;
			
			FlxG.state.add(b);
	}
}