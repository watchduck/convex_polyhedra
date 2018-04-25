#include "Cylinder.inc"


#declare TranslucentColor = rgbt <.8, .8, .8, .7>;


// numbers
#for( Index, 0, dimension_size(P, 1) - 1 )
    text { ttf "arial.ttf",  str(Index,0,0) ,  0.075, 0
        scale 0.3
        translate <-.15, -.1, -.0>
        translate P[Index]
    }
#end

// edges
#for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
    #local EdgeArray = UncoloredEdges[Index];
    Cylinder( P[EdgeArray[0]], P[EdgeArray[1]], .22, 0.008, rgb<0,.5,0> )
#end

// translucent polyhedron
object{
    SolidFromFaceNormalPoints(FaceNormalPoints, .1)
    pigment{ color TranslucentColor }
}

