import ezcore.EZScene;
import scenes.TestScene;
import hxd.App;

class EZGameApp extends App {
    public var EZScene: EZScene;

    override function init() {
        setEZScene(new TestScene(this));
    }

    function setEZScene(scene: EZScene, disposePrevious: Bool = true) {
        super.setScene(scene, disposePrevious);

        EZScene = scene;
    }

    override function update(dt: Float) {
        EZScene.update(dt); //runs any update functions in the current scene
    }

    static function main() {
        #if sys
        hxd.Res.initLocal(); // important! allows the app access to our game's resource files: images (sprites), audio, etc.
        #else
        hxd.Res.initEmbed(); // use hxd.Res.initEmbed(); for html5/js
        #end
        new EZGameApp();
    }
}
