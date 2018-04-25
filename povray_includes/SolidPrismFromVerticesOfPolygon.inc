#include "math.inc"
#include "SolidPrismFromVerticesOfPolygonContainingOrigin.inc"

/*
Creates a solid prism from the points of a convex polygon.

The sides of the prism are moved to the inside by `Offset`.

Vertex points are expected in correct order, last point equal to first.

The intersection with the normal vector must be properly 
within the polygon, i.e. not on an edge.
*/

#macro SolidPrismFromVerticesOfPolygon(Points, Offset, PrismThickness)

    #local A = Points[0];
    #local B = Points[1];
    #local C = Points[2];

    // perpendicular to the plane containing the vertices
    #local Normal = vnormalize(vcross(B-A,C-A));

    // distance of the plane from the origin
    #local Dist = vdot(A,vnormalize(vcross(B-A,C-A)));

    #local ArrayLen = dimension_size(Points, 1);
    #local MovedPoints = array[ArrayLen];
    #for (Index, 0, ArrayLen-1)
        #local Point = Points[Index];
        #local MovedPoints[Index] = Point - Dist*Normal;
    #end

    union{
        SolidPrismFromVerticesOfPolygonContainingOrigin(MovedPoints, Offset, PrismThickness)
        translate Dist*Normal
    }

#end
