#include "math.inc"
#include "PointCutter.inc"

/*
Creates a polyhedron (with its center in the origin)
given by the points where its planes
intersect their normal vectors.

The polyhedron is a solid cut from a sphere with CSG.

The faces are moved to the inside by `Offset`.
*/

#macro SolidFromFaceNormalPoints(Points, Offset)

    #local Len = dimension_size(Points, 1);

    #local CutterUnion = union{
        #for (Index, 0, Len-1)
            PointCutter( Points[Index], Offset )
        #end
    }
    
    difference{
        sphere{<0,0,0>, 100}
        object{CutterUnion}
    }

#end
