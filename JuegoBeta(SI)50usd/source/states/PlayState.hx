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
		//FlxG.resizeWindow();
		
		nave = new Nave(100,300);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		add(nave);
	}
}
