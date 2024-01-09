package ezcore;

import hxd.res.Image;
import ezcore.EZAnim;
import h2d.col.Bounds;
import h2d.Object;
import src.EZScene;

abstract class EZEntitiy extends Object {
    public var scene: EZScene;
    public var sprite: Object;
    public var hitbox: Bounds;

    public function new(scene: EZScene) {
        super(scene);
        
        this.scene = scene;

        scene.addEntity(this);
    }

    public abstract function update(dt: Float): Void;

    function getHitbox() {
        hitbox.x = this.x;
        hitbox.y = this.y;
        return hitbox;
    }

    function setSprite(obj: Object){
        sprite = obj;
        sprite.parent = this;

        return sprite;
    }

    public function useAnimationFromSpriteStrip(image_resource: Image, speed, chosenFrames: Array<Int>, centered: Bool = true) {
        var oldsprite = sprite;
        sprite = EZAnim.createAnimFromStrip( this, image_resource, speed, chosenFrames, centered);
        oldsprite.remove();

        return sprite;
    }

    public function dispose(): Void {
        sprite.remove();
    }
}