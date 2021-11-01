package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	static inline final ICONGRIDSALTY = 'iconGridsalty';

	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('icons/iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('soon', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('god-shaggy', [24, 25], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('shaggy', [28, 31], 0, false, isPlayer);
		animation.add('matt', [26, 27], 0, false, isPlayer);
		animation.add('bf-but-gf', [16], 0, false, isPlayer);
		animation.add('playable-updike', [32, 33], 0, false, isPlayer);
		animation.add('cass', [36, 37], 0, false, isPlayer);
		animation.add('nene', [34, 35], 0, false, isPlayer);
		animation.add('piconjo', [38, 39], 0, false, isPlayer);
		animation.add('monika', [48, 49], 0, false, isPlayer);
		animation.add('playable-skid-and-pump', [2, 3], 0, false, isPlayer);
		animation.add('senpai-hd', [50, 51], 0, false, isPlayer);
		animation.add('senpai-hd-spirit', [54, 55], 0, false, isPlayer);
		animation.add('miku', [64, 65], 0, false, isPlayer);
		animation.add('sis', [68, 69], 0, false, isPlayer);
		animation.add('ex', [70, 71], 0, false, isPlayer);
		animation.add('tabi', [72, 73], 0, false, isPlayer);
		animation.add('agoti', [72, 73], 0, false, isPlayer);
		animation.add('tabi-agoti', [72, 73], 0, false, isPlayer);
		animation.add('carol', [74, 75], 0, false, isPlayer);
		animation.add('whitty', [74, 75], 0, false, isPlayer);
		animation.add('bob', [76, 77], 0, false, isPlayer);
		animation.add('opheebop', [76, 77], 0, false, isPlayer);
		animation.add('hex', [78, 79], 0, false, isPlayer);
		animation.add('cyrix', [78, 79], 0, false, isPlayer);
		animation.add('bf-salty', [40, 41], 0, false, isPlayer);
		animation.add('spooky-salty', [42, 43], 0, false, isPlayer);
		animation.add('dad-salty', [52, 53], 0, false, isPlayer);
		animation.add('parents-salty', [57, 58], 0, false, isPlayer);
		animation.add('senpai-salty', [62, 63], 0, false, isPlayer);
		animation.add('pico-salty', [44, 45], 0, false, isPlayer);
		animation.add('mom-salty-car', [46, 47], 0, false, isPlayer);
		animation.add('static', [80, 81], 0, false, isPlayer);
		animation.add('who', [14], 0, false, isPlayer);
		animation.add('ron', [82, 83], 0, false, isPlayer);
		animation.add('stare', [84], 0, false, isPlayer);
		animation.add('salad', [85, 86], 0, false, isPlayer);
		animation.add('zardy', [87, 88], 0, false, isPlayer);
		animation.add('flippy-lol', [90, 91], 0, false, isPlayer);
		animation.add('flipqy', [92, 93], 0, false, isPlayer);
		animation.add('tricky', [94, 95], 0, false, isPlayer);
		animation.add('tricky2', [94, 95], 0, false, isPlayer);
		animation.add('hank', [96, 97], 0, false, isPlayer);
		animation.add('aflac', [98, 99], 0, false, isPlayer);
		animation.add('void', [100, 101], 0, false, isPlayer);
		animation.add('robot', [102, 103], 0, false, isPlayer);
		animation.add('nonsense', [104, 105], 0, false, isPlayer);
		animation.add('eteled', [106, 107], 0, false, isPlayer);
		animation.add('bob2', [108, 109], 0, false, isPlayer);
		animation.add('bosip', [110, 111], 0, false, isPlayer);
		animation.add('ash', [112, 113], 0, false, isPlayer);
		animation.add('cerbera', [112, 113], 0, false, isPlayer);
		animation.add('papyrus', [114, 115], 0, false, isPlayer);
		animation.add('sans', [116, 117], 0, false, isPlayer);
		animation.add('PapAndSans', [118, 119], 0, false, isPlayer);
		animation.add('henry', [120, 121], 0, false, isPlayer);		
		animation.add('impostor', [120, 121], 0, false, isPlayer);
		animation.add('blantad', [122, 123], 0, false, isPlayer);
		animation.add('rebecca', [122, 123], 0, false, isPlayer);
		animation.add('duet', [124, 125], 0, false, isPlayer);
		animation.add('kou', [126, 127], 0, false, isPlayer);
		animation.add('bf-fever', [128, 129], 0, false, isPlayer);
		animation.add('taki', [130, 131], 0, false, isPlayer);
		animation.add('blueballs', [132, 133], 0, false, isPlayer);
		animation.add('sunday', [10, 11], 0, false, isPlayer);
		animation.add('sarv', [134, 135], 0, false, isPlayer);
		animation.add('demon-sarv', [138, 139], 0, false, isPlayer);
		animation.add('ruv', [136, 137], 0, false, isPlayer);
		animation.add('selever', [140, 141], 0, false, isPlayer);
		animation.add('sonicfun', [142, 143], 0, false, isPlayer);
		animation.add('sonicLordX', [145, 146], 0, false, isPlayer);
		animation.add('bole', [147, 148], 0, false, isPlayer);
		animation.add('nonsense-god', [89], 0, false, isPlayer);
		animation.add('annie', [150, 151], 0, false, isPlayer);
		animation.add('only-agoti', [152, 153], 0, false, isPlayer);
		animation.add('only-agotiCHARACTER', [152, 153], 0, false, isPlayer);
		animation.add('taeyai', [154, 155], 0, false, isPlayer);
		animation.add('taeyai-evil', [156, 157], 0, false, isPlayer);
		animation.add('little-man', [158, 159], 0, false, isPlayer);
		animation.add('kapi', [168, 169], 0, false, isPlayer);
		animation.add('bob-only', [160, 161], 0, false, isPlayer);
		animation.add('hex-only', [162, 163], 0, false, isPlayer);
		animation.add('a', [164, 165], 0, false, isPlayer);
		animation.add('arch', [166, 167], 0, false, isPlayer);
		animation.add('garcelloghost', [174, 175], 0, false, isPlayer);
		animation.add('rshaggy', [176, 177], 0, false, isPlayer);
		animation.add('ace', [178, 179], 0, false, isPlayer);
		animation.add('sans2', [180, 181], 0, false, isPlayer);
		animation.add('miku2', [182, 183], 0, false, isPlayer);
		animation.add('selever_angry', [184, 185], 0, false, isPlayer);
		animation.add('flippy_unflipped_killer', [186, 187], 0, false, isPlayer);
		animation.add('amor', [188, 189], 0, false, isPlayer);
		animation.add('tordbot', [190, 191], 0, false, isPlayer);
		animation.add('jeff', [192, 193], 0, false, isPlayer);
		animation.add('sad-mouse', [194, 195], 0, false, isPlayer);
		animation.add('bf-black', [196, 197], 0, false, isPlayer);
		animation.add('tabi-only', [198, 199], 0, false, isPlayer);
		animation.add('retro2-wrath', [201, 202], 0, false, isPlayer);
		animation.add('ash-only', [215, 216], 0, false, isPlayer);
		animation.add('cerb-only', [225, 226], 0, false, isPlayer);
		animation.add('whitty-only', [227, 228], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}
	    
		scrollFactor.set();
	}



	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
