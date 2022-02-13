package ui;

import flixel.graphics.FlxGraphic;
import flixel.addons.ui.FlxButtonPlus;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.graphics.frames.FlxTileFrames;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxPoint;
import flixel.system.FlxAssets;
import flixel.util.FlxDestroyUtil;
import flixel.ui.FlxButton;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxFrame;
import flixel.ui.FlxVirtualPad;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

class Hitbox extends FlxSpriteGroup
{
    public var hitbox:FlxSpriteGroup;

    var sizex:Int = 320;

    var frameshb:FlxAtlasFrames;

    public var k1:FlxButton;
    public var k2:FlxButton;
    public var k3:FlxButton;
    public var k4:FlxButton;
    public var k5:FlxButton;
    public var k6:FlxButton;
    public var k7:FlxButton;
    public var k8:FlxButton;
    public var k9:FlxButton;
    public var k10:FlxButton;    
    public var k11:FlxButton;  
    
    public function new(type:HitboxType = FOUR)
    {
        super();

        hitbox = new FlxSpriteGroup();
        hitbox.scrollFactor.set();
        
        var hitbox_hint:FlxSprite = new FlxSprite(0, 0);
        hitbox_hint.alpha = 0.3;
        add(hitbox_hint);

        k1 = new FlxButton(0, 0);
        k2 = new FlxButton(0, 0);
        k3 = new FlxButton(0, 0);
        k4 = new FlxButton(0, 0);
        k5 = new FlxButton(0, 0);
        k6 = new FlxButton(0, 0);
        k7 = new FlxButton(0, 0);
        k8 = new FlxButton(0, 0);
        k9 = new FlxButton(0, 0);
        k10 = new FlxButton(0, 0);
        k11 = new FlxButton(0, 0);        

        switch (type){
            case ONE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/1k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/1k');
                sizex = 1280;
                
                hitbox.add(add(k1 = createhitbox(0, "k1"))); //
            }
            case TWO:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/2k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/2k');
                sizex = 640;
                
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k1 = createhitbox(sizex, "k2"))); //
            }
            case THREE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/3k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/3k');
                sizex = 426;
                
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k1 = createhitbox(sizex, "k2")));
                hitbox.add(add(k1 = createhitbox(sizex * 2, "k3")));
            }
            case FOUR:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/4k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/4k');
                sizex = 320;

                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
            }
            case FIVE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/5k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/5k');
                sizex = 256;
                
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
            } 
            case SIX:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/6k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/6k');
                sizex = 213;
                
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
            }
            case SEVEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/7k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/7k');
                sizex = 182;
                
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
                hitbox.add(add(k7 = createhitbox(sizex * 6, "k7"))); 
            }              
            case EIGHT:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/8k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/8k');
                sizex = 160;
            
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
                hitbox.add(add(k7 = createhitbox(sizex * 6, "k7")));
                hitbox.add(add(k8 = createhitbox(sizex * 7, "k8"))); 
            }                            
            case NINE:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/9k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/9k');
                sizex = 142;
            
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
                hitbox.add(add(k7 = createhitbox(sizex * 6, "k7")));
                hitbox.add(add(k8 = createhitbox(sizex * 7, "k8"))); 
                hitbox.add(add(k9 = createhitbox(sizex * 8, "k9")));
            }
            case TEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/10k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/10k');
                sizex = 128;
            
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
                hitbox.add(add(k7 = createhitbox(sizex * 6, "k7")));
                hitbox.add(add(k8 = createhitbox(sizex * 7, "k8"))); 
                hitbox.add(add(k9 = createhitbox(sizex * 8, "k9")));
                hitbox.add(add(k10 = createhitbox(sizex * 9, "k10")));                
            }
            case ELEVEN:
            {
                hitbox_hint.loadGraphic(Paths.image('androidcontrols/hitboxes/11k_hint');
                frameshb = Paths.getSparrowAtlas('androidcontrols/hitboxes/11k');
                sizex = 116;
            
                hitbox.add(add(k1 = createhitbox(0, "k1")));
                hitbox.add(add(k2 = createhitbox(sizex, "k2")));
                hitbox.add(add(k3 = createhitbox(sizex * 2, "k3")));
                hitbox.add(add(k4 = createhitbox(sizex * 3, "k4")));    
                hitbox.add(add(k5 = createhitbox(sizex * 4, "k5")));
                hitbox.add(add(k6 = createhitbox(sizex * 5, "k6"))); 
                hitbox.add(add(k7 = createhitbox(sizex * 6, "k7")));
                hitbox.add(add(k8 = createhitbox(sizex * 7, "k8"))); 
                hitbox.add(add(k9 = createhitbox(sizex * 8, "k9")));
                hitbox.add(add(k10 = createhitbox(sizex * 9, "k10"))); 
                hitbox.add(add(k11 = createhitbox(sizex * 10, "k11"))); 
            }
        }
    }

    public function createhitbox(X:Float, framestring:String) {
        var button = new FlxButton(X, 0);
        
        var graphic:FlxGraphic = FlxGraphic.fromFrame(frameshb.getByName(framestring));

        button.loadGraphic(graphic);

        button.alpha = 0;

    
        button.onDown.callback = function (){
            FlxTween.num(0, 0.75, .075, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        };

        button.onUp.callback = function (){
            FlxTween.num(0.75, 0, .1, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }
        
        button.onOut.callback = function (){
            FlxTween.num(button.alpha, 0, .2, {ease: FlxEase.circInOut}, function (a:Float) { button.alpha = a; });
        }

        return button;
    }

    override public function destroy():Void
        {
            super.destroy();
    
            k1 = null;
            k2 = null;
            k3 = null;
            k4 = null;
            k5 = null;
            k6 = null;
            k7 = null;
            k8 = null;
            k9 = null;
            k10 = null;
            k11 = null;            
        }
}

enum HitboxType {
    ONE;
    TWO;
    THREE;
    FOUR;
    FIVE;
    SIX;
    SEVEN;
    EIGHT;
    NINE;
}