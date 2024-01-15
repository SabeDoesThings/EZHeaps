package scenes;

import ezcore.EZScene;
import hxd.App;

class TestScene extends EZScene {
    public function new(app: App) {
        super(app);

        var tf = new h2d.Text(hxd.res.DefaultFont.get(), this);
        tf.text = "Hello Hashlink!";
        tf.scale(4);
    }
}