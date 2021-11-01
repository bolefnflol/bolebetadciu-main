package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxSound;
import flixel.text.FlxText;

class CreditsOpen extends MusicBeatState
{
    override function create()
    {
		if (!FlxG.sound.music.playing)
		{
			FlxG.sound.playMusic(Paths.music('credits'));
		}

	    var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGBlue'));
	    add(bg);
		createCoolText(['press enter']);        

	    if (FlxG.keys.justPressed.ENTER)
        trace ('is this working?');
	    fancyOpenURL("https://sites.google.com/view/boles-betadciu-pack-credits/home");

		if (FlxG.keys.justPressed.ESCAPE)
		{
        trace ('is this working?');
		FlxG.switchState(new MainMenuState());
		}
    }

	function createCoolText(textArray:Array<String>)
	{
		var clickme:Alphabet = new Alphabet(0, 0, true, false);
		clickme.screenCenter(X);
	
	}
    
}