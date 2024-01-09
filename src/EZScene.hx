package src;

import core.EZGameObject;
import hxd.App;
import h2d.Scene;

abstract class EZScene extends Scene {
    //add entities here

    var entities: Array<EZGameObject> = [];

    public function new(app: App) {
        super();
    }

    public function addEntity(ent: EZGameObject) {
        entities.push(ent);
    }

    public function removeEntity(ent: EZGameObject) {
        entities.remove(ent);
        ent.dispose();
    }

    public function update(dt: Float) {
        for (ent in entities) {
            ent.update(dt);
        }
    }
}
