package ezcore;

class EZSprite {
    public static function createSprite(parent, image_resource:hxd.res.Image, centered:Bool=true, ?flipX:Bool=false, ?flipY = false) {
        var tile = image_resource.toTile().split( 0 );
        for( t in tile ){
            if( centered )
                t.setCenterRatio();
            if( flipX )
                t.flipX();
            if( flipY )
                t.flipY();
        }
        var sprite = [ for( i in [0] ) tile[i] ];
        return new h2d.Anim( sprite, 0, parent );
    }
}