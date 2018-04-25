#include "math.inc"
#include "PointCutter.inc"

/*
Creates a solid prism from the points of a convex polygon containing the origin.

The sides of the prism are moved to the inside by `Offset`.

Vertex points are expected in correct order, last point equal to first.

The origin must be properly within the polygon, i.e. not on an edge.
*/

#macro SolidPrismFromVerticesOfPolygonContainingOrigin(Points, Offset, PrismThickness)

    #local Debug = false;

    // perpendicular to the plane containing the vertices (and the origin)
    #local PerpPlane = VPerp_To_Plane(Points[0], Points[1]);

    // from this cylinder the prism will be cut
    #local Cylinder = cylinder{
        PerpPlane*PrismThickness/2, -PerpPlane*PrismThickness/2, 100
        #if (Debug)
            pigment{color rgbt<.5,.5,.5,.5>}
        #end
    }

    #local CutUnion = union{
        #local ArrayLen = dimension_size(Points, 1);
        #for (Index, 0, ArrayLen-2)

            #local A = Points[Index];
            #local B = Points[Index+1];
            #local Diff = B - A;

            // perpendicular to the line through A and B in the main plane
            #local Perp = VPerp_Adjust(A, Diff);

            // distance of the line through A and B from O
            // http://mathworld.wolfram.com/Point-LineDistance3-Dimensional.html
            #local LenA = vlength(A);
            #local LenDiff = vlength(Diff);
            #local NumeratorMinuend = pow(LenA,2) * pow(LenDiff,2);
            #local NumeratorSubtrahend = pow(   vdot( A, Diff ),   2   );
            #local Denominator = pow( LenDiff, 2 );
            #local Dist = sqrt(  (NumeratorMinuend - NumeratorSubtrahend) / Denominator  );

            // intersection point of the line through A and B and the perpendicular
            #local SectPoint = Perp * Dist;
            
            #if (!Debug)
                // add the halfspace at this point to the cut union
                PointCutter(SectPoint, Offset)
            #else
                sphere{A, 2*PrismThickness   pigment{color Blue}   }
                sphere{SectPoint, 1.5*PrismThickness   pigment{color Green}   }
            #end

        #end
    }

   
    #if (!Debug)

        difference{
            object{Cylinder}
            object{CutUnion}
        }

    #else

        cylinder{<0,0,0>, PerpPlane, PrismThickness    pigment{color Red}   }
        object{Cylinder}
        object{CutUnion}

    #end

#end
