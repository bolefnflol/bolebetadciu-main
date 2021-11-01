package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-christmas':
				tex = Paths.getSparrowAtlas('characters/gfChristmas');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-car':
				tex = Paths.getSparrowAtlas('characters/gfCar');
				frames = tex;
				animation.addByIndices('singUP', 'GF Dancing Beat Hair blowing CAR', [0], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat Hair blowing CAR', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat Hair blowing CAR', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,
					false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

			case 'gf-pixel':
				tex = Paths.getSparrowAtlas('characters/gfPixel');
				frames = tex;
				animation.addByIndices('singUP', 'GF IDLE', [2], "", 24, false);
				animation.addByIndices('danceLeft', 'GF IDLE', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF IDLE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

				setGraphicSize(Std.int(width * PlayState.daPixelZoom));
				updateHitbox();
				antialiasing = false;

			case 'dad':
				// DAD ANIMATION LOADING CODE
				tex = Paths.getSparrowAtlas('characters/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');
			case 'spooky':
				tex = Paths.getSparrowAtlas('characters/spooky_kids_assets');
				frames = tex;
				animation.addByPrefix('singUP', 'spooky UP NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'spooky DOWN note', 24, false);
				animation.addByPrefix('singLEFT', 'note sing left', 24, false);
				animation.addByPrefix('singRIGHT', 'spooky sing right', 24, false);
				animation.addByIndices('danceLeft', 'spooky dance idle', [0, 2, 6], "", 12, false);
				animation.addByIndices('danceRight', 'spooky dance idle', [8, 10, 12, 14], "", 12, false);

				addOffset('danceLeft');
				addOffset('danceRight');

				addOffset("singUP", -20, 26);
				addOffset("singRIGHT", -130, -14);
				addOffset("singLEFT", 130, -10);
				addOffset("singDOWN", -50, -130);

				playAnim('danceRight');
			case 'mom':
				tex = Paths.getSparrowAtlas('characters/Mom_Assets');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				// ANIMATION IS CALLED MOM LEFT POSE BUT ITS FOR THE RIGHT
				// CUZ DAVE IS DUMB!
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');

			case 'mom-car':
				tex = Paths.getSparrowAtlas('characters/momCar');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				// ANIMATION IS CALLED MOM LEFT POSE BUT ITS FOR THE RIGHT
				// CUZ DAVE IS DUMB!
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');
			case 'monster':
				tex = Paths.getSparrowAtlas('characters/Monster_Assets');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -30, -40);
				playAnim('idle');
			case 'monster-christmas':
				tex = Paths.getSparrowAtlas('characters/monsterChristmas');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -40, -94);
				playAnim('idle');
			case 'pico':
				tex = Paths.getSparrowAtlas('characters/Pico_FNF_assetss');
				frames = tex;
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				if (isPlayer)
				{
					animation.addByPrefix('singLEFT', 'Pico NOTE LEFT0', 24, false);
					animation.addByPrefix('singRIGHT', 'Pico Note Right0', 24, false);
					animation.addByPrefix('singRIGHTmiss', 'Pico Note Right Miss', 24, false);
					animation.addByPrefix('singLEFTmiss', 'Pico NOTE LEFT miss', 24, false);
				}
				else
				{
					// Need to be flipped! REDO THIS LATER!
					animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
					animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
					animation.addByPrefix('singRIGHTmiss', 'Pico NOTE LEFT miss', 24, false);
					animation.addByPrefix('singLEFTmiss', 'Pico Note Right Miss', 24, false);
				}

				animation.addByPrefix('singUPmiss', 'pico Up note miss', 24);
				animation.addByPrefix('singDOWNmiss', 'Pico Down Note MISS', 24);

				addOffset('idle');
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -68, -7);
				addOffset("singLEFT", 65, 9);
				addOffset("singDOWN", 200, -70);
				addOffset("singUPmiss", -19, 67);
				addOffset("singRIGHTmiss", -60, 41);
				addOffset("singLEFTmiss", 62, 64);
				addOffset("singDOWNmiss", 210, -28);

				playAnim('idle');

				flipX = true;

			case 'bf':
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'bf-christmas':
				var tex = Paths.getSparrowAtlas('characters/bfChristmas');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);

				playAnim('idle');

				flipX = true;
			case 'bf-car':
				var tex = Paths.getSparrowAtlas('characters/bfCar');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				playAnim('idle');

				flipX = true;
			case 'bf-pixel':
				frames = Paths.getSparrowAtlas('characters/bfPixel');
				animation.addByPrefix('idle', 'BF IDLE', 24, false);
				animation.addByPrefix('singUP', 'BF UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'BF LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'BF RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'BF DOWN NOTE', 24, false);
				animation.addByPrefix('singUPmiss', 'BF UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF DOWN MISS', 24, false);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");
				addOffset("singUPmiss");
				addOffset("singRIGHTmiss");
				addOffset("singLEFTmiss");
				addOffset("singDOWNmiss");

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				playAnim('idle');

				width -= 100;
				height -= 100;

				antialiasing = false;

				flipX = true;
			case 'bf-pixel-dead':
				frames = Paths.getSparrowAtlas('characters/bfPixelsDEAD');
				animation.addByPrefix('singUP', "BF Dies pixel", 24, false);
				animation.addByPrefix('firstDeath', "BF Dies pixel", 24, false);
				animation.addByPrefix('deathLoop', "Retry Loop", 24, true);
				animation.addByPrefix('deathConfirm', "RETRY CONFIRM", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath');
				addOffset('deathLoop', -37);
				addOffset('deathConfirm', -37);
				playAnim('firstDeath');
				// pixel bullshit
				setGraphicSize(Std.int(width * 6));
				updateHitbox();
				antialiasing = false;
				flipX = true;

			case 'senpai':
				frames = Paths.getSparrowAtlas('characters/senpai');
				animation.addByPrefix('idle', 'Senpai Idle', 24, false);
				animation.addByPrefix('singUP', 'SENPAI UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'SENPAI LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'SENPAI RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'SENPAI DOWN NOTE', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 37);
				addOffset("singRIGHT");
				addOffset("singLEFT", 40);
				addOffset("singDOWN", 14);

				playAnim('idle');

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				antialiasing = false;
			case 'senpai-angry':
				frames = Paths.getSparrowAtlas('characters/senpai');
				animation.addByPrefix('idle', 'Angry Senpai Idle', 24, false);
				animation.addByPrefix('singUP', 'Angry Senpai UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'Angry Senpai LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'Angry Senpai RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'Angry Senpai DOWN NOTE', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 37);
				addOffset("singRIGHT");
				addOffset("singLEFT", 40);
				addOffset("singDOWN", 14);
				playAnim('idle');

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				antialiasing = false;

			case 'spirit':
				frames = Paths.getPackerAtlas('characters/spirit');
				animation.addByPrefix('idle', "idle spirit_", 24, false);
				animation.addByPrefix('singUP', "up_", 24, false);
				animation.addByPrefix('singRIGHT', "right_", 24, false);
				animation.addByPrefix('singLEFT', "left_", 24, false);
				animation.addByPrefix('singDOWN', "spirit down_", 24, false);

				addOffset('idle', -220, -280);
				addOffset('singUP', -220, -240);
				addOffset("singRIGHT", -220, -280);
				addOffset("singLEFT", -200, -280);
				addOffset("singDOWN", 170, 110);

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				playAnim('idle');

				antialiasing = false;

			case 'parents-christmas':
				frames = Paths.getSparrowAtlas('characters/mom_dad_christmas_assets');
				animation.addByPrefix('idle', 'Parent Christmas Idle', 24, false);
				animation.addByPrefix('singUP', 'Parent Up Note Dad', 24, false);
				animation.addByPrefix('singDOWN', 'Parent Down Note Dad', 24, false);
				animation.addByPrefix('singLEFT', 'Parent Left Note Dad', 24, false);
				animation.addByPrefix('singRIGHT', 'Parent Right Note Dad', 24, false);

				animation.addByPrefix('singUP-alt', 'Parent Up Note Mom', 24, false);

				animation.addByPrefix('singDOWN-alt', 'Parent Down Note Mom', 24, false);
				animation.addByPrefix('singLEFT-alt', 'Parent Left Note Mom', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'Parent Right Note Mom', 24, false);

				addOffset('idle');
				addOffset("singUP", -47, 24);
				addOffset("singRIGHT", -1, -23);
				addOffset("singLEFT", -30, 16);
				addOffset("singDOWN", -31, -29);
				addOffset("singUP-alt", -47, 24);
				addOffset("singRIGHT-alt", -1, -24);
				addOffset("singLEFT-alt", -30, 15);
				addOffset("singDOWN-alt", -30, -27);

				playAnim('idle');

			case 'shaggy':
				tex = Paths.getSparrowAtlas('characters/shaggy');
				frames = tex;
				animation.addByPrefix('idle', 'shaggy_idle', 24);
				animation.addByPrefix('singUP', 'shaggy_up', 24);
				animation.addByPrefix('singRIGHT', 'shaggy_right', 24);
				animation.addByPrefix('singDOWN', 'shaggy_down', 24);
				animation.addByPrefix('singLEFT', 'shaggy_left', 24);

				addOffset("idle", -400, 90);
				addOffset("singUP", -400, 110);
				addOffset("singRIGHT", -390, 47);
				addOffset("singLEFT", -230, -30);
				addOffset("singDOWN", -400, -67);

				playAnim('idle');

			case 'matt':
				tex = Paths.getSparrowAtlas('characters/matt_assets');
				frames = tex;
				animation.addByPrefix('idle', "matt idle", 24);
				animation.addByPrefix('singUP', 'matt up note', 24, false);
				animation.addByPrefix('singDOWN', 'matt down note', 24, false);
				animation.addByPrefix('singLEFT', 'matt left note', 24, false);
				animation.addByPrefix('singRIGHT', 'matt right note', 24, false);
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');

			case 'bf-but-gf':
				var tex = Paths.getSparrowAtlas('characters/GIRLFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'playable-updike':
				tex = Paths.getSparrowAtlas('characters/playable_updike', 'shared');
				frames = tex;
				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);

				addOffset("idle", -5, 0);
				addOffset("singUP", -35, 32);
				addOffset("singRIGHT", -34, 0);
				addOffset("singLEFT", 17, 4);
				addOffset("singDOWN", -26, -47);

				playAnim('idle');

				flipX = true;

			case 'cass':
				tex = Paths.getSparrowAtlas('characters/cass');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');

			case 'nene':
				tex = Paths.getSparrowAtlas('characters/nene', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'nene idle', 24);
				animation.addByPrefix('singUP', 'nene up', 24);
				animation.addByPrefix('singRIGHT', 'nene right', 24);
				animation.addByPrefix('singDOWN', 'nene down', 24);
				animation.addByPrefix('singLEFT', 'nene left', 24);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
                addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'piconjo':
				tex = Paths.getSparrowAtlas('characters/piconjo');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

                addOffset('idle',0);
                addOffset('singUP', -25, 85);
                addOffset('singRIGHT',-65, 0);
                addOffset('singLEFT', -30);
                addOffset('singDOWN', -30, -94);

				playAnim('idle');

			case 'tankman':
				tex = Paths.getSparrowAtlas('characters/Tankman', 'shared');
				frames = tex;
				animation.addByPrefix('danceRight', 'Idle', 24);
				animation.addByPrefix('danceLeft', 'Idle', 24);
				animation.addByPrefix('singUP', 'Sing Up', 24);
				animation.addByPrefix('singRIGHT', 'Sing Right', 24);
				animation.addByPrefix('singDOWN', 'Sing Down', 24);
				animation.addByPrefix('singLEFT', 'Sing Left', 24);
				animation.addByPrefix('ugh', 'Ugh', 24);

				addOffset('danceRight');
				addOffset('danceLeft');
				addOffset("ugh", 85, -14);
				addOffset("singUP", 51, 38);
				addOffset("singRIGHT", -10, -24);
				addOffset("singLEFT", 84, -14);
				addOffset("singDOWN", 62, -104);

				playAnim('danceRight');

			case 'monika':
				tex = Paths.getSparrowAtlas('characters/monika', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'playable-skid-and-pump':
				var tex = Paths.getSparrowAtlas('characters/playable-skid-and-pump', 'shared');
				frames = tex;
                trace(tex.frames.length);
                animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
                animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);
                animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'senpai-hd':
				tex = Paths.getSparrowAtlas('characters/senpai-hd', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'senpai-hd-spirit':
				tex = Paths.getSparrowAtlas('characters/senpai-hd-spirit', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'miku':
				tex = Paths.getSparrowAtlas('characters/ev_miku_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Miku idle dance', 24);
				animation.addByPrefix('singUP', 'Miku Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Miku Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Miku Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Miku Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 13, 50);
				addOffset("singRIGHT", -10, 27);
				addOffset("singLEFT", 22, 7);
				addOffset("singDOWN", -14, -36);

				playAnim('idle');

			case 'sis':
				tex = Paths.getSparrowAtlas('characters/Big_Sis_Assest', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'big sis idle instance 1', 24);
				animation.addByPrefix('singUP', 'big sis UP instance 1', 24);
				animation.addByPrefix('singRIGHT', 'big sis RIGHT instance 1', 24);
				animation.addByPrefix('singDOWN', 'big sis DOWN instance 1', 24);
				animation.addByPrefix('singLEFT', 'big sis LEFT instance 1', 24);

				addOffset('idle');
				addOffset("singUP", 44, 30);
				addOffset("singRIGHT", 49, -12);
				addOffset("singLEFT", 90, -10);
				addOffset("singDOWN", 110, -90);

				playAnim('idle');

			case 'ex':
				tex = Paths.getSparrowAtlas('characters/playableexGF', 'shared');
				frames = tex;
				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);

				playAnim('idle');

				flipX = true;

			case 'agoti':
				frames = Paths.getSparrowAtlas('characters/AGOTI');
				animation.addByPrefix('idle', 'Agoti_Idle', 24, false);
				animation.addByPrefix('singUP', 'Agoti_Up', 24, false);
				animation.addByPrefix('singDOWN', 'Agoti_Down', 24, false);
				animation.addByPrefix('singLEFT', 'Agoti_Left', 24, false);
				animation.addByPrefix('singRIGHT', 'Agoti_Right', 24, false);

				addOffset('idle');

				addOffset("singUP", 10, 70);
				addOffset("singRIGHT", 70, -40);
				addOffset("singLEFT", 70, 40);
				addOffset("singDOWN", 0, -180);

				playAnim('idle');

			case 'tabi':
				frames = Paths.getSparrowAtlas('characters/TABI');
				animation.addByPrefix('idle', 'Dad idle dance', 24, false);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24, false);

				addOffset('idle');

				addOffset("singUP", 44, 50);
				addOffset("singRIGHT", -15, 11);
				addOffset("singLEFT", 104, -28);
				addOffset("singDOWN", -5, -108);

				playAnim('idle');

			case 'carol':
				tex = Paths.getSparrowAtlas('characters/CAROL', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'whitty':
				var tex = Paths.getSparrowAtlas('characters/WHITTY', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'bob':
				tex = Paths.getSparrowAtlas('characters/bob_asset');
				frames = tex;
				animation.addByPrefix('idle', "bob_idle", 24, true);
				animation.addByPrefix('singUP', 'bob_UP', 24, false);
				animation.addByPrefix('singDOWN', 'bob_DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'bob_LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'bob_RIGHT', 24, false);

				playAnim('idle');

				flipX = true;

			case 'opheebop':
				tex = Paths.getSparrowAtlas('characters/OPHEEBOP');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, true);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -30, -40);
				playAnim('idle');

			case 'hex':
				tex = Paths.getSparrowAtlas('characters/hex', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'cyrix':
				tex = Paths.getSparrowAtlas('characters/Cyrix', 'shared');
				frames = tex;

				animation.addByPrefix('idle', 'cyrix idle', 24);
				animation.addByPrefix('singUP', 'cyrix up note', 24);
				animation.addByPrefix('singRIGHT', 'cyrix right note', 24);
				animation.addByPrefix('singDOWN', 'cyrix down note', 24);
				animation.addByPrefix('singLEFT', 'cyrix left note', 24);

				addOffset('idle', 0, -3);
				addOffset("singUP", 8, -1);
				addOffset("singRIGHT", 14, -26);
				addOffset("singLEFT", -10, -11);
				addOffset("singDOWN", 0, -43);
	
				playAnim('idle');

				this.scale.x = 0.85;
				this.scale.y = 0.85;

			case 'gf-salty':
				tex = Paths.getSparrowAtlas('salty/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'bf-salty':
				var tex = Paths.getSparrowAtlas('salty/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'mom-salty-car':
				tex = Paths.getSparrowAtlas('salty/momCar');
				frames = tex;

				animation.addByPrefix('idle', "Mom Idle", 24, false);
				animation.addByPrefix('singUP', "Mom Up Pose", 24, false);
				animation.addByPrefix('singDOWN', "MOM DOWN POSE", 24, false);
				animation.addByPrefix('singLEFT', 'Mom Left Pose', 24, false);
				animation.addByPrefix('singRIGHT', 'Mom Pose Left', 24, false);

				addOffset('idle');
				addOffset("singUP", 14, 71);
				addOffset("singRIGHT", 10, -60);
				addOffset("singLEFT", 250, -23);
				addOffset("singDOWN", 20, -160);

				playAnim('idle');

			case 'spooky-salty':
				tex = Paths.getSparrowAtlas('salty/spooky_kids_assets');
				frames = tex;
				animation.addByPrefix('singUP', 'spooky UP NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'spooky DOWN note', 24, false);
				animation.addByPrefix('singLEFT', 'note sing left', 24, false);
				animation.addByPrefix('singRIGHT', 'spooky sing right', 24, false);
				animation.addByIndices('danceLeft', 'spooky dance idle', [0, 2, 6], "", 12, false);
				animation.addByIndices('danceRight', 'spooky dance idle', [8, 10, 12, 14], "", 12, false);

				addOffset('danceLeft');
				addOffset('danceRight');
				addOffset("singUP", -20, 26);
				addOffset("singRIGHT", -130, -14);
				addOffset("singLEFT", 130, -10);
				addOffset("singDOWN", -50, -130);
				playAnim('danceRight');

			case 'dad-salty':
				tex = Paths.getSparrowAtlas('salty/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'omg-no-gf':
				tex = Paths.getSparrowAtlas('arandomfolderlol/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'parents-salty':
				frames = Paths.getSparrowAtlas('salty/mom_dad_christmas_assets');
				animation.addByPrefix('idle', 'Parent Christmas Idle', 24, false);
				animation.addByPrefix('singUP', 'Parent Up Note Dad', 24, false);
				animation.addByPrefix('singDOWN', 'Parent Down Note Dad', 24, false);
				animation.addByPrefix('singLEFT', 'Parent Left Note Dad', 24, false);
				animation.addByPrefix('singRIGHT', 'Parent Right Note Dad', 24, false);

				animation.addByPrefix('singUP-alt', 'Parent Up Note Mom', 24, false);

				animation.addByPrefix('singDOWN-alt', 'Parent Down Note Mom', 24, false);
				animation.addByPrefix('singLEFT-alt', 'Parent Left Note Mom', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'Parent Right Note Mom', 24, false);

				addOffset('idle');
				addOffset("singUP", -47, 24);
				addOffset("singRIGHT", -1, -23);
				addOffset("singLEFT", -30, 16);
				addOffset("singDOWN", -31, -29);
				addOffset("singUP-alt", -47, 24);
				addOffset("singRIGHT-alt", -1, -24);
				addOffset("singLEFT-alt", -30, 15);
				addOffset("singDOWN-alt", -30, -27);

				playAnim('idle');

			case 'senpai-salty':
				frames = Paths.getSparrowAtlas('salty/senpai');
				animation.addByPrefix('idle', 'Senpai Idle', 24, false);
				animation.addByPrefix('singUP', 'SENPAI UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'SENPAI LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'SENPAI RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'SENPAI DOWN NOTE', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 37);
				addOffset("singRIGHT");
				addOffset("singLEFT", 40);
				addOffset("singDOWN", 14);

				playAnim('idle');

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				antialiasing = false;

			case 'pico-salty':
				tex = Paths.getSparrowAtlas('salty/Pico_FNF_assetss');
				frames = tex;
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
				animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
				addOffset('idle');
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -68, -7);
				addOffset("singLEFT", 65, 9);
				addOffset("singDOWN", 200, -70);

				if (isPlayer)
				
				{
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
				animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
				addOffset('idle');
				addOffset("singUP", 1, 27);
				addOffset("singRIGHT", 82, -7);
				addOffset("singLEFT", -55, 9);
				addOffset("singDOWN", 110, -90);
            	}

				playAnim('idle');

				flipX = true;

			case 'static':
				tex = Paths.getSparrowAtlas('characters/static_assets2', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'static Idle', 24);
				animation.addByPrefix('singUP', 'static Up Pose', 24);
				animation.addByPrefix('singRIGHT', 'static Pose Left', 24);
				animation.addByPrefix('singDOWN', 'static DOWN POSE', 24);
				animation.addByPrefix('singLEFT', 'static Left Pose', 24);

				addOffset('idle');
				addOffset("singUP", 14, 70);
				addOffset("singRIGHT", 0, -59);
				addOffset("singLEFT", 70, 0);
				addOffset("singDOWN", -30, -161);

				playAnim('idle');

			case 'who':
				tex = Paths.getSparrowAtlas('arandomfolderlol/Untitled-1', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'idle', 24);

			case 'ron':
				tex = Paths.getSparrowAtlas('characters/ronronronron', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 24);
				animation.addByPrefix('singUP', 'Sing Up', 24);
				animation.addByPrefix('singRIGHT', 'Sing Right', 24);
				animation.addByPrefix('singDOWN', 'Sing Down', 24);
				animation.addByPrefix('singLEFT', 'Sing Left', 24);

				addOffset('idle');
				addOffset("singUP", 44, 20);
				addOffset("singRIGHT", -10, -33);
				addOffset("singLEFT", 81, -20);
				addOffset("singDOWN", 62, -102);

				playAnim('idle');

			case 'stare':
				tex = Paths.getSparrowAtlas('characters/stare', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 24);
				animation.addByPrefix('singUP', 'Sing Up', 24);
				animation.addByPrefix('singRIGHT', 'Sing Right', 24);
				animation.addByPrefix('singDOWN', 'Sing Down', 24);
				animation.addByPrefix('singLEFT', 'Sing Left', 24);
				animation.addByPrefix('heSeesYou', 'HeWatchesYOU', 24);

				addOffset('idle');
				addOffset("singUP", 4, -20);
				addOffset("singRIGHT", 170, -33);
				addOffset("singLEFT", 81, -20);
				addOffset("singDOWN", 2, -41);
				addOffset("heSeesYou", -90, 0);

				playAnim('idle');

			case 'salad':
					tex = Paths.getSparrowAtlas('characters/salad_fingers', 'shared');
					frames = tex;
					animation.addByPrefix('idle', 'Dad idle dance', 24);
					animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
					animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
					animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
					animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);
	
					playAnim('idle');
					addOffset("singUP", -6, 50);
					addOffset("singRIGHT", 0, 27);
					addOffset("singLEFT", -10, 10);
					addOffset("singDOWN", 0, -30);
	
					playAnim('idle');

			case 'zardy':
				tex = Paths.getSparrowAtlas('characters/Zardy', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 14);
				animation.addByPrefix('singUP', 'Sing Up', 24);
				animation.addByPrefix('singRIGHT', 'Sing Right', 24);
				animation.addByPrefix('singDOWN', 'Sing Down', 24);
				animation.addByPrefix('singLEFT', 'Sing Left', 24);

				addOffset('idle');
				addOffset("singUP", -80, -10);
				addOffset("singRIGHT", -65, 5);
				addOffset("singLEFT", 130, 5);
				addOffset("singDOWN", -2, -26);

				playAnim('idle');

			case 'flippy-lol':
				tex = FlxAtlasFrames.fromSparrow('arandomfolderlol/FLIPPY', 'shared');
				frames = tex;
				animation.addByPrefix('idle', "FLIPPY Idle", 24, true);
				animation.addByPrefix('singUP', 'FLP M UP', 24, false);
				animation.addByPrefix('singDOWN', 'FLP M DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'FLP M LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'FLP M RIGHT', 24, false);

				addOffset('idle');
				addOffset("singUP", 66, 89);
				addOffset("singRIGHT", 68, 32);
				addOffset("singLEFT", 140, 94);
				addOffset("singDOWN", -14, -131);

				playAnim('idle');

			case 'flipqy':
				tex = Paths.getSparrowAtlas('arandomfolderlol/flippyold');
				frames = tex;
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
				animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
				addOffset('idle');
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -68, -7);
				addOffset("singLEFT", 65, 9);
				addOffset("singDOWN", 200, -70);

				if (isPlayer)
				
				{
				animation.addByPrefix('idle', "Pico Idle Dance", 24);
				animation.addByPrefix('singUP', 'pico Up note0', 24, false);
				animation.addByPrefix('singDOWN', 'Pico Down Note0', 24, false);
				animation.addByPrefix('singLEFT', 'Pico Note Right0', 24, false);
				animation.addByPrefix('singRIGHT', 'Pico NOTE LEFT0', 24, false);
				addOffset('idle');
				addOffset("singUP", 1, 27);
				addOffset("singRIGHT", 82, -7);
				addOffset("singLEFT", -55, 9);
				addOffset("singDOWN", 110, -90);
            	}

				playAnim('idle');

				flipX = true;

			case 'tricky':
				tex = Paths.getSparrowAtlas('characters/tiky', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 24);
				animation.addByPrefix('singUP', 'Sing Up', 24);
				animation.addByPrefix('singRIGHT', 'Sing Right', 24);
				animation.addByPrefix('singDOWN', 'Sing Down', 24);
				animation.addByPrefix('singLEFT', 'Sing Left', 24);

				addOffset('idle');
				addOffset("singUP", 94, 0);
				addOffset("singRIGHT", 40, -103);
				addOffset("singLEFT", 150, 0);
				addOffset("singDOWN", 12, -19);

				playAnim('idle');

			case 'hank':
				tex = Paths.getSparrowAtlas('arandomfolderlol/Hank_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Hank Idle', 24);
				animation.addByPrefix('singUP', 'Hank Up note', 24);
				animation.addByPrefix('singRIGHT', 'Hank right note', 24);
				animation.addByPrefix('singDOWN', 'Hank Down Note', 24);
				animation.addByPrefix('singLEFT', 'Hank Left Note', 24);

				addOffset('idle');
				addOffset("singUP", 44, 6);
				addOffset("singRIGHT", -6, -24);
				addOffset("singLEFT", -31, -11);
				addOffset("singDOWN", 10, -64);

				playAnim('idle');

			case 'aflac':
				tex = Paths.getSparrowAtlas('arandomfolderlol/aflac', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle', 24);
				animation.addByPrefix('singUP', 'Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'void':
				tex = Paths.getSparrowAtlas('arandomfolderlol/void_assets', 'shared');
				frames = tex;
		        animation.addByPrefix('idle', 'Void Idle', 24, false);
		        animation.addByPrefix('singUP', 'Void Up Note Chill', 20, false);
		        animation.addByPrefix('singDOWN', 'Void Down Note Chill', 20, false);
		        animation.addByPrefix('singLEFT', 'Void Left Note Chill', 20, false);
		        animation.addByPrefix('singRIGHT', 'Void Right Note Chill', 26, false);
				animation.addByPrefix('singUP-alt', 'Void Up Note Hype', 20, false);
		        animation.addByPrefix('singDOWN-alt', 'Void Down Note Hype', 20, false);
		        animation.addByPrefix('singLEFT-alt', 'Void Left Note Hype', 20, false);
		        animation.addByPrefix('singRIGHT-alt', 'Void Right Note Hype', 26, false);
				animation.addByPrefix('wink', 'Void Wink', 12, false);
				animation.addByPrefix('seethe', 'Void Seethe', 24, false);
				animation.addByPrefix('sickintro', 'Void Intro', 12, false);

				addOffset('idle');
				addOffset("singUP", -47, 24);
				addOffset("singRIGHT", 26, -30);
				addOffset("singLEFT", -20, 16);
				addOffset("singDOWN", -31, -29);
				addOffset("singUP-alt", -47, 56);
				addOffset("singRIGHT-alt", -28, -16);
				addOffset("singLEFT-alt", -10, 15);
				addOffset("singDOWN-alt", -30, -27);
				addOffset("wink", -170, -55);
				addOffset("seethe", -170, -55);
				addOffset("sickintro", -170, -55);



		        playAnim('idle');

			case 'robot':
				tex = Paths.getSparrowAtlas('arandomfolderlol/robot', 'shared');
				frames = tex;

				animation.addByPrefix('danceRight', "KB_DanceRight", 26, false);
				animation.addByPrefix('danceLeft', "KB_DanceLeft", 26, false);
				animation.addByPrefix('singUP', "KB_Up", 24, false);
				animation.addByPrefix('singDOWN', "KB_Down", 24, false);
				animation.addByPrefix('singLEFT', 'KB_Left', 24, false);
				animation.addByPrefix('singRIGHT', 'KB_Right', 24, false);
				
				addOffset('danceRight',119,-96);
				addOffset('danceLeft',160,-105);
				addOffset("singLEFT", 268, 37);
				addOffset("singRIGHT", -110, -161);
				addOffset("singDOWN", 184, -182);
				addOffset("singUP", 173, 52);

		        playAnim('idle');

			case 'nonsense':
				tex = Paths.getSparrowAtlas('arandomfolderlol/Nonsense', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Idle Tired', 24);
				animation.addByPrefix('singUP', 'NoteUp', 24);
				animation.addByPrefix('singRIGHT', 'NoteRight', 24);
				animation.addByPrefix('singDOWN', 'NoteDown', 24);
				animation.addByPrefix('singLEFT', 'NoteLeft', 24);

				addOffset('idle');
				addOffset("singUP", 14, 17);
				addOffset("singRIGHT", 20, -10);
				addOffset("singLEFT", 7, -18);
				addOffset("singDOWN", -2, -52);

				playAnim('idle');

			case 'eteled':
				tex = Paths.getSparrowAtlas('arandomfolderlol/eteled2_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'eteled idle dance', 24);
				animation.addByPrefix('singUP', 'eteled Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'eteled Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'eteled Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'eteled Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", 34, 68);
				addOffset("singRIGHT", 20, -63);
				addOffset("singLEFT", 297, 25);
				addOffset("singDOWN", 4, -95);

				playAnim('idle');

			case 'bob2':
				frames = Paths.getSparrowAtlas('arandomfolderlol/bob_assets', 'shared');
				animation.addByPrefix('idle', 'BOB idle dance', 24, false);
				animation.addByPrefix('singUP', 'BOB Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'BOB Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'BOB Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'BOB Sing Note RIGHT', 24, false);

				addOffset('idle');
				addOffset("singUP", -36, 57);
				addOffset("singRIGHT", -62, 32);
				addOffset("singLEFT",31, 13);
				addOffset("singDOWN", -31, -10);

				playAnim('idle');

			case 'ash':
				frames = Paths.getSparrowAtlas('arandomfolderlol/ASH', 'shared');
				animation.addByIndices('danceLeft', 'ASH idle dance', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], '', 24, false);
				animation.addByIndices('danceRight', 'ASH idle dance', [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], '', 24, false);
				animation.addByIndices('danceRightStatic', 'ASH idle dance', [0], '', 0, false);
				animation.addByPrefix('singUP', 'ASH Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'ASH Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'ASH Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'ASH Sing Note RIGHT', 24, false);

				addOffset('danceLeft');
				addOffset('danceRight');
				
				addOffset("singUP", 93, 41);
				addOffset("singRIGHT", -74, -23);
				addOffset("singLEFT", 122, -74);
				addOffset("singDOWN", -35, -93);

				playAnim('danceRight');

			case 'cerbera':
				frames = Paths.getSparrowAtlas('arandomfolderlol/Cerb', 'shared');
				animation.addByPrefix('idle', 'Cerb idle dance', 24, false);
				animation.addByPrefix('singUP', 'Cerb Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'Cerb Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'Cerb Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'Cerb Sing Note RIGHT', 24, false);

				addOffset('idle');
				addOffset("singUP", 18, 20);
				addOffset("singRIGHT", 5, -13);
				addOffset("singLEFT",13, 9);
				addOffset("singDOWN", -23, -32);

				playAnim('idle');

			case 'bosip':
				frames = Paths.getSparrowAtlas('characters2/bosip_assets', 'shared');
				animation.addByPrefix('idle', 'Bosip idle dance', 24, false);
				animation.addByPrefix('singUP', 'Bosip Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'Bosip Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'Bosip Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'Bosip Sing Note RIGHT', 24, false);

				addOffset('idle');
				addOffset("singUP", 23, 24);
				addOffset("singRIGHT", -6, -18);
				addOffset("singLEFT", 64, 7);
				addOffset("singDOWN", 22, -18);

				playAnim('idle');

			case 'papyrus':
				tex = Paths.getSparrowAtlas('characters2/assets paps', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'papyrus idle new', 24);
				animation.addByPrefix('singUP', 'papyrus up', 24);
				animation.addByPrefix('singRIGHT', 'papyrus right', 24);
				animation.addByPrefix('singDOWN', 'papyrus down', 24);
				animation.addByPrefix('singLEFT', 'papyrus left', 24);

				addOffset('idle', 0, 0);
				addOffset("singUP", 14, 65);
				addOffset("singRIGHT", -99, -7);
				addOffset("singLEFT", 22, -6);
				addOffset("singDOWN", -90, 9);

				playAnim('idle');

			case 'sans':
				var tex = Paths.getSparrowAtlas('characters2/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'henry':
				tex = Paths.getSparrowAtlas('characters2/DADDY_DEAREST', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'impostor':
				tex = Paths.getSparrowAtlas('characters2/impostor', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'impostor idle', 24, false);
				animation.addByPrefix('singUP', 'impostor up', 24, false);
				animation.addByPrefix('singRIGHT', 'impostor right', 24, false);
				animation.addByPrefix('singDOWN', 'impostor down', 24, false);
				animation.addByPrefix('singLEFT', 'imposter left', 24, false);
				animation.addByPrefix('kill', 'impostor kill', 24, false);
				animation.addByPrefix('gf', 'impostor gf', 24, false);

				addOffset('idle');
				addOffset("singUP", -49, 66);
				addOffset("singRIGHT", -80, 0);
				addOffset("singLEFT", 140, 3);
				addOffset("singDOWN", -11, -12);
				addOffset('kill', -30, 140);
				addOffset('gf', -59, 65);

				playAnim('idle');

			case 'duet':
				tex = Paths.getSparrowAtlas('characters2/duet_assets', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'duet idle dance', 24, true);
				animation.addByPrefix('showtime', 'duet SHOWTIME', 24, false);
				animation.addByPrefix('singUP', 'duet Sing Note UP', 24, false);
				animation.addByPrefix('singLEFT', 'duet Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'duet Sing Note RIGHT', 24, false);
				animation.addByPrefix('singDOWN', 'duet Sing Note DOWN', 24, false);

				addOffset('idle');
				addOffset('showtime', 14, -62);
				addOffset("singUP", -16, 42);
				addOffset("singRIGHT", 53, 18);
				addOffset("singLEFT", 8, 0);
				addOffset("singDOWN", 17, -39);

				playAnim('idle');

			case 'blantad':
				tex = Paths.getSparrowAtlas('characters2/DADDY_DEAREST2', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'rebecca':
				tex = Paths.getSparrowAtlas('characters2/rebecca_asset', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'rebecca idle dance', 24);
				animation.addByPrefix('singUP', 'rebecca Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'rebecca Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'rebecca Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'rebecca Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -26, 21);
				addOffset("singRIGHT", -48, -143);
				addOffset("singLEFT", 153, -116);
				addOffset("singDOWN", 15, -309);

				playAnim('idle');

			case 'kou':
				tex = Paths.getSparrowAtlas('characters2/Kou_FNF_assetss');
				frames = tex;
				animation.addByPrefix('idle', "Kou Idle Pose", 24, true);
				animation.addByPrefix('singUP', 'Kou Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'Kou Down Note', 24, false);
				animation.addByPrefix('singLEFT', 'Kou Left Note', 24, false);
				animation.addByPrefix('singRIGHT', 'Kou Right Note', 24, false);

				addOffset('idle');
				addOffset("singUP", -49, 66);
				addOffset("singRIGHT", -80, 0);
				addOffset("singLEFT", 140, 3);
				addOffset("singDOWN", -11, -12);

				playAnim('idle');

			case 'bf-fever':
				var tex = Paths.getSparrowAtlas('characters2/BOYFRIEND2', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('scared', 'BF idle shaking', 24);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
				animation.addByPrefix('transition', 'BF Transition', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -28, 13);
				addOffset("singRIGHT", -55, -9);
				addOffset("singLEFT", 14, -2);
				addOffset("singDOWN", -29, -75);
				addOffset("singUPmiss", -56, 10);
				addOffset("singRIGHTmiss", -48, -15);
				addOffset("singLEFTmiss", 21, -3);
				addOffset("singDOWNmiss", -33, -75);
				addOffset("hey", -10, 3);
				addOffset("transition", -10, 3);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -26, -9);

				playAnim('idle');

				flipX = true;

			case 'taki':
				tex = Paths.getSparrowAtlas('characters2/Monster_Assets');
				frames = tex;
				animation.addByPrefix('idle', 'monster idle', 24, false);
				animation.addByPrefix('singUP', 'monster up note', 24, false);
				animation.addByPrefix('singDOWN', 'monster down', 24, false);
				animation.addByPrefix('singLEFT', 'Monster left note', 24, false);
				animation.addByPrefix('singRIGHT', 'Monster Right note', 24, false);

				addOffset('idle');
				addOffset("singUP", -20, 50);
				addOffset("singRIGHT", -51);
				addOffset("singLEFT", -30);
				addOffset("singDOWN", -30, -40);
				
				playAnim('idle');

			case 'blueballs':
				tex = Paths.getSparrowAtlas('characters2/trollgeStatic1');
				frames = tex;

				animation.addByPrefix('idle',"TrollgeIdle", 12, false);
				animation.addByPrefix('singUP',"TrollgeUp", 24, false);
				animation.addByPrefix('singDOWN',"TrollgeDown", 24, false);
				animation.addByPrefix('singLEFT',"TrollgeLeft", 24, false);
				animation.addByPrefix('singRIGHT',"TrollgeRight", 24, false);
	
				addOffset('idle');
				addOffset('singUP', 119, 6);
				addOffset('singRIGHT', -20, -4);
				addOffset('singLEFT', 73, -2);
				addOffset('singDOWN', 23, -63);

				playAnim("idle");

			case 'sunday':
				tex = Paths.getSparrowAtlas('characters2/sunday_assets');
				frames = tex;

				animation.addByPrefix('idle', 'sunday idle', 24, true);
				animation.addByPrefix('singUP', 'sunday up', 24, false);
				animation.addByPrefix('singUP-alt', 'sunday alt up', 24, false);
				animation.addByPrefix('singDOWN', 'sunday down', 24, false);
				animation.addByPrefix('singLEFT', 'sunday left', 24, false);
				animation.addByPrefix('singRIGHT', 'sunday right', 24, false);

				addOffset('idle',1,1);
				addOffset("singDOWN", 157, -27);
				addOffset("singRIGHT", -71,-10);
				addOffset("singUP", 137, 147);
				addOffset("singLEFT", 39,-1);

			case 'sarv':
				tex = Paths.getSparrowAtlas('characters2/sarvente_sheet', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'SarventeIdle', 24);
				animation.addByPrefix('singUP', 'SarventeUp', 24);
				animation.addByPrefix('singRIGHT', 'SarventeRight', 24);
				animation.addByPrefix('singDOWN', 'SarventeDown', 24);
				animation.addByPrefix('singLEFT', 'SarventeLeft', 24);
				animation.addByPrefix('hey', 'SarventeHey', 24);

				addOffset('idle');
				addOffset('hey');
				addOffset("singUP", 0, 0);
				addOffset("singRIGHT", 0, 0);
				addOffset("singLEFT", 0, 0);
				addOffset("singDOWN", 0, 0);

				playAnim('idle');

			case 'ruv':
				tex = Paths.getSparrowAtlas('characters2/ruv_sheet', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'RuvIdle', 24);
				animation.addByPrefix('singUP', 'RuvUp', 24);
				animation.addByPrefix('singRIGHT', 'RuvRight', 24);
				animation.addByPrefix('singDOWN', 'RuvDown', 24);
				animation.addByPrefix('singLEFT', 'RuvLeft', 24);

				addOffset('idle');
				addOffset("singUP", 4, -46);
				addOffset("singRIGHT", 6, -50);
				addOffset("singLEFT", 7, -99);
				addOffset("singDOWN", 7, -43);

				playAnim('idle');

			case 'selever':
				tex = Paths.getSparrowAtlas('characters2/fuckboi_sheet', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'SelIdle', 24);
				animation.addByPrefix('singUP', 'SelUp', 24);
				animation.addByPrefix('singRIGHT', 'SelRight', 24);
				animation.addByPrefix('singDOWN', 'SelDown', 24);
				animation.addByPrefix('singLEFT', 'SelLeft', 24);

				addOffset('idle');
				addOffset("singUP", 0, 0);
				addOffset("singRIGHT", 0, 0);
				addOffset("singLEFT", 0, 0);
				addOffset("singDOWN", 0, 0);

				playAnim('idle');
			
			case 'sonicfun':

				tex = Paths.getSparrowAtlas('unused-yet/sonic.exe/SonicFunAssets');
				frames = tex;
				animation.addByPrefix('idle', 'SONICFUNIDLE', 24);
				animation.addByPrefix('singUP', 'SONICFUNUP', 24);
				animation.addByPrefix('singRIGHT', 'SONICFUNRIGHT', 24);
				animation.addByPrefix('singDOWN', 'SONICFUNDOWN', 24);
				animation.addByPrefix('singLEFT', 'SONICFUNLEFT', 24);
	
				addOffset('idle', -21, 189);
				addOffset("singUP", 22, 126);
				addOffset("singRIGHT", -80, 43);
				addOffset("singLEFT", 393, -60);
				addOffset("singDOWN", 15, -67);
					
	
				playAnim('idle');

			case 'sonicLordX':
				frames = Paths.getSparrowAtlas('sonic.exe/SONIC_X');
				animation.addByPrefix('idle', 'sonicX IDLE', 24, false);
				animation.addByPrefix('singUP', 'sonicx UP', 24, false);
				animation.addByPrefix('singDOWN', 'sonicx DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'sonicx LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'sonicx RIGHT', 24, false);
					
				addOffset('idle');
				addOffset("singUP", 5, 92);
				addOffset("singRIGHT", 24, -38);
				addOffset("singLEFT",51, -15);
				addOffset("singDOWN", 16, -62);
	
				antialiasing = true;

				playAnim('idle');

			case 'bole':
				frames = Paths.getSparrowAtlas('characters2/bole');
				animation.addByPrefix('idle', 'bole idle', 24, false);
				animation.addByPrefix('singUP', 'bole up', 24, false);
				animation.addByPrefix('singDOWN', 'bole down', 24, false);
				animation.addByPrefix('singLEFT', 'bole left', 24, false);
				animation.addByPrefix('singRIGHT', 'bole right', 24, false);
					
				addOffset('idle');
				addOffset("singUP", 0, 0);
				addOffset("singRIGHT", 0, 0);
				addOffset("singLEFT", 0, 0);
				addOffset("singDOWN", 0, 0);

				playAnim('idle');

			case 'parasite':
				tex = Paths.getSparrowAtlas('arandomfolderlol/parasite', 'shared');
				frames = tex;
				animation.addByPrefix('idle', 'mungus idle', 24, true);
				animation.addByPrefix('singUP', 'parasite up new', 24, false);
				animation.addByPrefix('singRIGHT', 'parasite right', 24, false);
				animation.addByPrefix('singDOWN', 'paracite down', 24, false);
				animation.addByPrefix('singLEFT', 'parasite left', 24, false);

				addOffset('idle');
				addOffset("singUP", -10, 196);
				addOffset("singRIGHT", 30, 16);
				addOffset("singLEFT", 50, 49);
				addOffset("singDOWN", -18, -111);

				setGraphicSize(Std.int(width * 2));

				playAnim('idle');	
			case 'nonsense-god':
					frames = Paths.getSparrowAtlas('Nonsense/Nonsense_God');
					animation.addByPrefix('idle', 'idle god', 24, false);
					animation.addByPrefix('singUP', 'god right', 24, false);
					animation.addByPrefix('singLEFT', 'left god', 24, false);
					animation.addByPrefix('singRIGHT', 'god right', 24, false);
					animation.addByPrefix('singDOWN', 'God down', 24, false);
					animation.addByPrefix('die', 'die god', 24, false);
					animation.addByIndices('singUP-alt', 'god up long note', [0, 2, 3, 4, 5, 6, 7], "", 24, false);
					animation.addByPrefix('singDOWN-alt', 'God down', 24, false);
					animation.addByPrefix('singLEFT-alt', 'left god', 24, false);
					animation.addByPrefix('singRIGHT-alt', 'god right', 24, false);
					addOffset('idle', 1, 1);
					addOffset("singUP");
					addOffset("singRIGHT");
					addOffset("singLEFT");
					addOffset("singDOWN");
					addOffset("die", 718, 302);
					addOffset("singUP-alt", 0, 6);
					addOffset("singRIGHT-alt");
					addOffset("singLEFT-alt");
					addOffset("singDOWN-alt");
					
					playAnim('idle');
			case 'demon-sarv':
					tex = Paths.getSparrowAtlas('arandomfolderlol/smokinhotbabe');
					frames = tex;
					animation.addByPrefix('idle', 'LuciferSarvIdle', 24);
					animation.addByPrefix('singUP', 'LuciferSarvUp', 24);
					animation.addByPrefix('singRIGHT', 'LuciferSarvRight', 24);
					animation.addByPrefix('singDOWN', 'LuciferSarvDown', 24);
					animation.addByPrefix('singLEFT', 'LuciferSarvLeft', 24);

					addOffset('idle');
					addOffset("singUP", 0, 0);
					addOffset("singRIGHT", 0, 0);
					addOffset("singLEFT", 0, 0);
					addOffset("singDOWN", 0, 0);

					playAnim('idle');

			case 'annie':
				var tex = Paths.getSparrowAtlas('arandomfolderlol/annie', 'shared');
				frames = tex;
				trace(tex.frames.length);
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				addOffset('idle', -5);
				addOffset("singUP", -3, 1);
				addOffset("singRIGHT", -7, 0);
				addOffset("singLEFT", 2, 4);
				addOffset("singDOWN", -6, 0);
				playAnim('idle');

				flipX = true;

			case 'god-shaggy':
					tex = Paths.getSparrowAtlas('arandomfolderlol/pshaggy');
					frames = tex;
					animation.addByPrefix('idle', 'pshaggy_idle', 24);
					animation.addByPrefix('singUP', 'pshaggy_up', 24);
					animation.addByPrefix('singRIGHT', 'pshaggy_right', 24);
					animation.addByPrefix('singDOWN', 'pshaggy_down', 24);
					animation.addByPrefix('singLEFT', 'pshaggy_left', 24);

					addOffset('idle');
					addOffset("singUP", 100, 30);
					addOffset("singRIGHT", 40, -40);
					addOffset("singLEFT", -9, -39);
					addOffset("singDOWN", 160, -110);

					playAnim('idle');

			case 'taeyai-evil':
				tex = Paths.getSparrowAtlas('arandomfolderlol/Taeyai_fly');
				frames = tex;
				animation.addByPrefix('idle', 'TaeYai fly 0', 24);
				animation.addByPrefix('singUP', 'TaeYai fly up', 24);
				animation.addByPrefix('singRIGHT', 'TaeYai fly right', 24);
				animation.addByPrefix('singDOWN', 'TaeYai fly down', 24);
				animation.addByPrefix('singLEFT', 'TaeYai fly left', 24);
				animation.addByPrefix('line', 'TaeYai fly I do0', 24);

				addOffset('idle');
				addOffset("line");
				addOffset("singUP", 4, 60);
				addOffset("singRIGHT", -100, -23);
				addOffset("singLEFT", 40, 0);
				addOffset("singDOWN", 0, -96);

				playAnim('idle');

			case 'tricky2':
				var tex = Paths.getSparrowAtlas('arandomfolderlol/BOYFRIEND');
				frames = tex;
				trace(tex.frames.length);
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				addOffset('idle');
				addOffset("singUP", -4, 28);
				addOffset("singRIGHT", -28, 0);
				addOffset("singLEFT", 42, 4);
				addOffset("singDOWN", 0, -40);
				playAnim('idle');

				flipX = true;

			case 'kapi':
				tex = Paths.getSparrowAtlas('arandomfolderlol/DADDY_DEAREST');
				frames = tex;
				animation.addByIndices('idle', 'Dad idle dance', [2, 4, 6, 8, 10, 0], "", 12, false);
				animation.addByPrefix('singUP', 'Dad Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);
				animation.addByPrefix('meow', 'Dad meow', 24, false);
				animation.addByPrefix('stare', 'Dad stare', 24, false);
				
				addOffset('idle');
				
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				addOffset("stare");
				addOffset("meow");
				playAnim('idle');

			case 'sonicfun':
				tex = Paths.getSparrowAtlas('characters2/SonicFunAssets');
				frames = tex;
				animation.addByPrefix('idle', 'SONICFUNIDLE', 24);
				animation.addByPrefix('singUP', 'SONICFUNUP', 24);
				animation.addByPrefix('singRIGHT', 'SONICFUNRIGHT', 24);
				animation.addByPrefix('singDOWN', 'SONICFUNDOWN', 24);
				animation.addByPrefix('singLEFT', 'SONICFUNLEFT', 24);
	
				addOffset('idle', -21, 189);
				addOffset("singUP", 22, 126);
				addOffset("singRIGHT", -80, 43);
				addOffset("singLEFT", 393, -60);
				addOffset("singDOWN", 15, -67);
					
	
				playAnim('idle');

			case 'a':
				tex = Paths.getSparrowAtlas('arandomfolderlol/a_assets');
				frames = tex;
				animation.addByPrefix('idle', 'IDLE', 24);
				animation.addByPrefix('singUP', 'UP', 24);
				animation.addByPrefix('singRIGHT', 'RIGHT', 24);
				animation.addByPrefix('singDOWN', 'DOWN', 24);
				animation.addByPrefix('singLEFT', 'LEFT', 24);
				animation.addByPrefix('look', 'Looking', 24);
				
				addOffset("idle", 0, 0);
				addOffset("singUP", -26, 110);
				addOffset("singRIGHT", -31, 13);
				addOffset("singLEFT", 111, 20);
				addOffset("singDOWN", -20, -180);
				addOffset("look", -90, 0);

				playAnim('idle');

			case 'gf-tankman':
				tex = Paths.getSparrowAtlas('unused-yet/tank/gf');
				frames = tex;
				animation.addByIndices('sad', 'GF Crying at Gunpoint', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing at Gunpoint', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing at Gunpoint', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);

				addOffset('sad', -2, -26);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				playAnim('danceRight');

			case 'little-man':
					tex = Paths.getSparrowAtlas('Small_Guy');
					frames = tex;
					animation.addByPrefix('idle', "idle", 24);
					animation.addByPrefix('singUP', 'up', 24, false);
					animation.addByPrefix('singDOWN', 'down', 24, false);
					animation.addByPrefix('singLEFT', 'left', 24, false);
					animation.addByPrefix('singRIGHT', 'right', 24, false);
					addOffset('idle');
					addOffset("singUP", -10, 8);
					addOffset("singLEFT", -8, 0);
					addOffset("singRIGHT", 0, 2);
					addOffset("singDOWN", 0, -10);

					playAnim('idle');

			case 'arch':
					tex = Paths.getSparrowAtlas('arch');
					frames = tex;
					animation.addByPrefix('idle', "arch", 24);
					animation.addByPrefix('singUP', 'arch', 24, false);
					animation.addByPrefix('singDOWN', 'arch', 24, false);
					animation.addByPrefix('singLEFT', 'arch', 24, false);
					animation.addByPrefix('singRIGHT', 'arch', 24, false);
					addOffset('idle');
					addOffset("singUP", 0, 0);
					addOffset("singLEFT", 0, 0);
					addOffset("singRIGHT", 0, 0);
					addOffset("singDOWN", 0, 0);

					playAnim('idle');

			case 'garcelloghost':
				tex = Paths.getSparrowAtlas('garcelloghosty_assets');
				frames = tex;
				animation.addByPrefix('idle', 'garcello idle dance', 24);
				animation.addByPrefix('singUP', 'garcello Sing Note UP', 24);
				animation.addByPrefix('singRIGHT', 'garcello Sing Note RIGHT', 24);
				animation.addByPrefix('singDOWN', 'garcello Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'garcello Sing Note LEFT', 24);
				animation.addByPrefix('garFarewell', 'garcello coolguy', 15);

				addOffset('idle');
				addOffset("singUP", 0, 0);
				addOffset("singRIGHT", 0, 0);
				addOffset("singLEFT", 0, 0);
				addOffset("singDOWN", 0, 0);
				addOffset("garTightBars", 0, 0);

				playAnim('idle');

			case 'rshaggy':
					tex = Paths.getSparrowAtlas('the-shaggy-folder/shaggy_red');
					frames = tex;
					animation.addByPrefix('idle', "shaggy_idle", 24);
					animation.addByPrefix('singUP', 'shaggy_up', 24, false);
					animation.addByPrefix('singDOWN', 'shaggy_down', 24, false);
					animation.addByPrefix('singLEFT', 'shaggy_left', 24, false);
					animation.addByPrefix('singRIGHT', 'shaggy_right', 24, false);
					addOffset('idle');
					addOffset("singUP", -16, 27);
					addOffset("singLEFT", 165, -114);
					addOffset("singRIGHT", -1, -43);
					addOffset("singDOWN", -10, -160);

					playAnim('idle');

			case 'ace':
				frames = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/ace');
				animation.addByPrefix('idle', 'Dad idle dance', 24, false);
				animation.addByPrefix('danceRight', 'Dad idle dance', 24, false);
				animation.addByPrefix('danceLeft', 'Dad idle dance', 24, false);
				animation.addByPrefix('singUP', 'Dad Sing note UP', 24, false);
				animation.addByPrefix('singLEFT', 'dad sing note right', 24, false);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24, false);
				animation.addByPrefix('singRIGHT', 'Dad Sing Note LEFT', 24, false);

				addOffset('idle');
				addOffset('danceRight');
				addOffset('danceLeft');
				addOffset("singUP", 4, 59);
				addOffset("singLEFT", 63, 40);
				addOffset("singRIGHT", 6, 25);
				addOffset("singDOWN", 8, -17);

				playAnim('danceRight');

			case 'sans2':
				tex = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/sans_dark');
				frames = tex;
				animation.addByPrefix('danceRight', 'idle0', 24);
				animation.addByPrefix('danceLeft', 'idle0', 24);
				animation.addByPrefix('singUP', 'up0', 24);
				animation.addByPrefix('singRIGHT', 'right0', 24);
				animation.addByPrefix('singDOWN', 'down0', 24);
				animation.addByPrefix('singLEFT', 'left0', 24);
				animation.addByPrefix('swingDOWN', 'swingDown0', 24, false);
				animation.addByPrefix('swingUP', 'swingUp0', 24, false);

				addOffset("danceRight");
				addOffset("danceLeft");
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");

				addOffset("swingDOWN");
				addOffset("swingUP");

				playAnim('danceRight');

			case 'miku2':
				frames = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/ev_miku_assets');
				
				animation.addByPrefix('idle', 'Miku idle dance', 24, false);
				animation.addByIndices('danceLeft','Miku idle dance',[31,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14], '', 24, false);
				animation.addByIndices('danceRight','Miku idle dance',[15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30], '', 24, false);
				animation.addByPrefix('singUP', 'Miku Sing Note UP0', 24, false);
				animation.addByPrefix('singDOWN', 'Miku Sing Note DOWN0', 24, false);
				animation.addByPrefix('singLEFT', 'Miku Sing Note LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'Miku Sing Note RIGHT0', 24, false);
				animation.addByPrefix('singUPmiss', 'Miku Sing Note UP MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'Miku Sing Note DOWN MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'Miku Sing Note LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'Miku Sing Note RIGHT MISS', 24, false);
				animation.addByPrefix('hey', 'miku hey', 24, false);
				animation.addByPrefix('firstDeath', "firstDeath", 24, false);
				animation.addByPrefix('deathLoop', "deathLoop", 24, false);
				animation.addByPrefix('deathConfirm', "deathConfirm", 24, false);

				addOffset('idle');
				addOffset('danceLeft');
				addOffset('danceRight');
				addOffset('hey', 53, 7);
				addOffset("singUP", 19, 51);
				addOffset("singDOWN", 11, 0);
				addOffset("singUPmiss", 19, 51);
				addOffset("singDOWNmiss", 11, 0);
				addOffset("singRIGHT", -51, 1);
				addOffset("singLEFT", 41, -1);
				addOffset("singRIGHTmiss", -53, 0);
				addOffset("singLEFTmiss", 42, -1);
				addOffset('firstDeath');
				addOffset('deathLoop');
				addOffset('deathConfirm');

				playAnim('danceLeft');

			case 'taeyai':
				tex = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/Taeyai');
				frames = tex;
				animation.addByPrefix('idle', 'TaeYai Idle', 24);
				animation.addByPrefix('singUP', 'TaeYai up', 24);
				animation.addByPrefix('singRIGHT', 'TaeYai right', 24);
				animation.addByPrefix('singDOWN', 'TaeYai Down', 24);
				animation.addByPrefix('singLEFT', 'TaeYai left', 24);

				addOffset('idle');
				addOffset("singUP", 24, 40);
				addOffset("singRIGHT", -130, -23);
				addOffset("singLEFT", 40, 0);
				addOffset("singDOWN", 50, -96);

				playAnim('idle');

			case 'selever_angry':
				tex = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/Selever_Angry');
				frames = tex;
				animation.addByPrefix('idle', 'Selever_Angry Idle', 6, false);
				animation.addByPrefix('singUP', 'Selever_Angry Up', 9, false);
				animation.addByPrefix('singRIGHT', 'Selever_Angry Right', 9, false);
				animation.addByPrefix('singDOWN', 'Selever_Angry Down', 9, false);
				animation.addByPrefix('singLEFT', 'Selever_Angry Left', 9, false);

				addOffset('idle');
				addOffset('singUP');
				addOffset('singRIGHT');
				addOffset('singDOWN');
				addOffset('singLEFT');

				playAnim('idle');

			case 'flippy_unflipped_killer':
				tex = Paths.getSparrowAtlas('flippy/FLIPPY_bloody');
				frames = tex;
				animation.addByPrefix('idle', 'FLIPPY Idle', 6, false);
				animation.addByPrefix('danceRight', 'FLIPPY Idle', 6, false);
				animation.addByPrefix('danceLeft', 'FLIPPY Idle', 6, false);
				animation.addByPrefix('singUP', 'FLP M UP', 9, false);
				animation.addByPrefix('singRIGHT', 'FLP M RIGHT', 9, false);
				animation.addByPrefix('singDOWN', 'FLP M DOWN', 9, false);
				animation.addByPrefix('singLEFT', 'FLP M LEFT', 9, false);

				addOffset('idle');
				addOffset('danceRight');
				addOffset('danceLeft');
				addOffset('singUP', 50, 80);
				addOffset('singRIGHT', 86, 20);
				addOffset('singDOWN', -10, -130);
				addOffset('singLEFT', 125, 85);

				playAnim('danceRight');

			case 'soon':
				frames = Paths.getSparrowAtlas('not-done-yet-coming-soon');
				animation.addByPrefix('idle', 'idle', 6, false);
				animation.addByPrefix('singUP', 'idle', 9, false);
				animation.addByPrefix('singRIGHT', 'idle', 9, false);
				animation.addByPrefix('singDOWN', 'idle', 9, false);
				animation.addByPrefix('singLEFT', 'idle', 9, false);
				addOffset('idle');
				addOffset('singUP');
				addOffset('singRIGHT');
				addOffset('singDOWN');
				addOffset('singLEFT');	

				playAnim('idle');	

			case 'only-agotiCHARACTER':
				frames = Paths.getSparrowAtlas('characters/AGOTI');
				animation.addByPrefix('idle', 'Agoti_Idle', 24, false);
				animation.addByPrefix('singUP', 'Agoti_Up', 24, false);
				animation.addByPrefix('singDOWN', 'Agoti_Down', 24, false);
				animation.addByPrefix('singLEFT', 'Agoti_Left', 24, false);
				animation.addByPrefix('singRIGHT', 'Agoti_Right', 24, false);

				addOffset('idle');

				addOffset("singUP", 10, 70);
				addOffset("singRIGHT", 70, -40);
				addOffset("singLEFT", 70, 40);
				addOffset("singDOWN", 0, -180);

				playAnim('idle');

			case 'amor':
				frames = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/amor_assets');
				animation.addByPrefix('idle', 'Amor idle dance', 24, false);
				animation.addByPrefix('singUP', 'Amor Sing Note UP', 24, false);
				animation.addByPrefix('singDOWN', 'Amor Sing Note DOWN', 24, false);
				animation.addByPrefix('singLEFT', 'Amor Sing Note LEFT', 24, false);
				animation.addByPrefix('singRIGHT', 'Amor Sing Note RIGHT', 24, false);
				animation.addByPrefix('drop', 'Amor drop', 24, false);

				addOffset('idle');
				addOffset("singUP", 5, 41);
				addOffset("singRIGHT", -11, 2);
				addOffset("singLEFT", 25, 1);
				addOffset("singDOWN", -23, -16);
				addOffset("drop", 42, 156);

				playAnim('idle');

			case 'tordbot':
				tex = Paths.getSparrowAtlas('tord/tordbot_assets');
				frames = tex;
				animation.addByPrefix('idle', "tordbot idle", 24, false);
				animation.addByPrefix('singUP', "tordbot up", 24, false);
				animation.addByPrefix('singDOWN', "tordbot down", 24, false);
				animation.addByPrefix('singLEFT', 'tordbot left', 24, false);
				animation.addByPrefix('singRIGHT', 'tordbot right', 24, false);

				addOffset('idle');
				addOffset("singRIGHT", -20, -20);
				addOffset("singDOWN", -10, -90);
				addOffset("singLEFT", -90);
				addOffset("singUP", -30, 29);

				playAnim('idle');

				setGraphicSize(Std.int(width * 1));

			case 'jeff':
				tex = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/jeffsprite');
				frames = tex;
				animation.addByPrefix('idle', 'Dad idle dance', 24);
				animation.addByPrefix('singUP', 'Dad Sing note UP', 24);
				animation.addByPrefix('singRIGHT', 'dad sing note right', 24);
				animation.addByPrefix('singDOWN', 'Dad Sing Note DOWN', 24);
				animation.addByPrefix('singLEFT', 'Dad Sing Note LEFT', 24);

				addOffset('idle');
				addOffset("singUP", -6, 50);
				addOffset("singRIGHT", 0, 27);
				addOffset("singLEFT", -10, 10);
				addOffset("singDOWN", 0, -30);

				playAnim('idle');

			case 'sad-mouse':
				tex = Paths.getSparrowAtlas('fridaynightsuicide/happymouse_assets');
				frames = tex;
				animation.addByPrefix('idle', 'Sadmouse Idle', 24);
				animation.addByPrefix('singUP', 'Sadmouse Up', 24);
				animation.addByPrefix('singRIGHT', 'Sadmouse Right', 24);
				animation.addByPrefix('singDOWN', 'Sadmouse Down', 24);
				animation.addByPrefix('singLEFT', 'Sadmouse Left', 24);

				addOffset('idle');
				addOffset('singUP');
				addOffset('singRIGHT');
				addOffset('singLEFT');
				addOffset('singDOWN');

				playAnim('idle');

			case 'bf-black':
				tex = Paths.getSparrowAtlas('fridaynightsuicide/BOYFRIEND', 'shared');
				frames = tex;

				trace(tex.frames.length);

				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'gf-black':
				tex = Paths.getSparrowAtlas('fridaynightsuicide/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'retro2-wrath':
				tex = Paths.getSparrowAtlas('another-folder-cuz-im-lazy/WrathRetroSpecter_2');
				frames = tex;
				animation.addByPrefix('idle', 'Retro IDLE', 24, false);
				animation.addByPrefix('singUP', 'Retro UP', 24);
				animation.addByPrefix('singRIGHT', 'Retro RIGHT', 24);
				animation.addByPrefix('singDOWN', 'Retro DOWN', 24);
				animation.addByPrefix('singLEFT', 'Retro LEFT', 24);

				addOffset('idle', -33, 5);
				addOffset("singUP", -34, 202);
				addOffset("singRIGHT", -126, 64);
				addOffset("singLEFT", -36, 194);
				addOffset("singDOWN", -55, 217);

				playAnim('idle');
		}


		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		if (!curCharacter.startsWith('bf-black'))
		if (!curCharacter.startsWith('bf-salty'))
		if (!curCharacter.startsWith('bf-but-gf'))
		if (!curCharacter.startsWith('playable-updike'))
		if (!curCharacter.startsWith('cass'))
		if (!curCharacter.startsWith('tankman'))
		if (!curCharacter.startsWith('playable-skid-and-pump'))
		if (!curCharacter.startsWith('miku'))
		if (!curCharacter.startsWith('miku2'))
		if (!curCharacter.startsWith('ex'))
		if (!curCharacter.startsWith('carol'))
		if (!curCharacter.startsWith('whitty'))
		if (!curCharacter.startsWith('hex'))
		if (!curCharacter.startsWith('cyrix'))
		if (!curCharacter.startsWith('spooky-salty'))
		if (!curCharacter.startsWith('parents-salty'))
		if (!curCharacter.startsWith('salad'))
		if (!curCharacter.startsWith('flippy-lol'))
		if (!curCharacter.startsWith('flipqy'))
		if (!curCharacter.startsWith('hank'))
		if (!curCharacter.startsWith('nonsense'))
		if (!curCharacter.startsWith('bob2'))
		if (!curCharacter.startsWith('bosip'))
		if (!curCharacter.startsWith('taki'))
		if (!curCharacter.startsWith('sunday'))
		if (!curCharacter.startsWith('bf-fever'))
		if (!curCharacter.startsWith('taki'))
		if (!curCharacter.startsWith('selever'))
		if (!curCharacter.startsWith('annie'))
		if (!curCharacter.startsWith('agoti'))
		if (!curCharacter.startsWith('zardy'))
		if (!curCharacter.startsWith('tricky2'))
		if (!curCharacter.startsWith('monika'))
		if (!curCharacter.startsWith('dad'))
		if (!curCharacter.startsWith('pico2'))
		if (!curCharacter.startsWith('sonicfun'))
		if (!curCharacter.startsWith('sans2'))
		if (!curCharacter.startsWith('taeyai'))
		if (!curCharacter.startsWith('sarv'))
		if (!curCharacter.startsWith('flippy_unflipped_killer'))
		if (!curCharacter.startsWith('only-agotiCHARACTER'))
		if (!curCharacter.startsWith('jeff'))
		if (!curCharacter.startsWith('ace'))

		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf' | 'gf-christmas' | 'gf-car' | 'gf-pixel' | 'gf-salty' | 'omg-no-gf' | 'gf-tankman' | 'gf-black':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'spooky' | 'sans2' | 'ace' | 'spooky-salty' | 'robot' | 'ash' | 'a'| 'tankman' | 'flippy_unflipped_killer':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
