package ezcore;

import ezcore.EZEntitiy;
import hxd.App;
import h2d.Scene;

abstract class EZScene extends Scene {
    //add entities here

    var entities: Array<EZEntitiy> = [];

    public function new(app: App) {
        super();
    }

    public function addEntity(ent: EZEntitiy) {
        entities.push(ent);
    }

    public function removeEntity(ent: EZEntitiy) {
        entities.remove(ent);
        ent.dispose();
    }

    public function update(dt: Float) {
        for (ent in entities) {
            ent.update(dt);
        }
    }
}
