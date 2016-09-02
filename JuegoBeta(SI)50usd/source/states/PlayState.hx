package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Nave;

class PlayState extends FlxState
{
	private var nave:Nave;
	
	override public function create():Void
	{
		super.create();
		nave = new Nave();
		nave.setPosition(80 - nave.width / 2, 144 - nave.height);
		add(nave);
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
	}
}
