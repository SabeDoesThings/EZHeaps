package ezcore;

class EZAnim {
    public static function createAnimFromStrip(parent, image_resource:hxd.res.Image, speed, chosenFrames:Array<Int>, centered:Bool=true, ?flipX:Bool=false, ?flipY = false): h2d.Anim {
        var height = image_resource.getSize().height;
        var autoCount = Math.floor( image_resource.getSize().width / height );
        var allFrames  = image_resource.toTile().split( autoCount );
        for( f in allFrames ){
            if( centered )
                f.setCenterRatio();
            if( flipX )
                f.flipX();
            if( flipY )
                f.flipY();
        }
        var frames = [ for( i in chosenFrames ) allFrames[i] ];
        return new h2d.Anim( frames, speed, parent );
    }
}
