package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Bala extends FlxSprite
{
	private var vel:Int = -200;
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(32, 4, 0xffff0000);
		velocity.y = vel;
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (y > FlxG.height || y < 0) {
				destroy();
		}
	}
	
}