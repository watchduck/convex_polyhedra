#include "math.inc"
#include "RotMatFromVectorAndAngle.inc"

/*
Returns a halfspace that contains `PointT` on its surface
and is perpendicular to the line through the origin and `PointT`.
The volume of the halfspace is outside, i.e. the origin is not in it.

`Offset` will move the box towards the origin.
*/

#macro PointCutter(PointT, Offset)

    // The volume of this halfspace is all points with positive x.
    #local Halfspace = plane{ -x, 1  translate x }

    #if (PointT.y=0 & PointT.z=0)

        #if (PointT.x>0)
            object{
                Halfspace
                translate ( PointT.x - Offset ) * x
            }
        #else
            object{
                Halfspace
                scale -x
                translate ( PointT.x + Offset ) * x
            }
        #end

    #else

        #local Dist = VDist(<0, 0, 0>, PointT);
        #local Point0 = <Dist, 0, 0>;
        #local Angle = VAngle(PointT, Point0);
        #local Perp = VPerp_To_Plane(PointT, Point0);

        object{
            Halfspace
            translate (Dist-Offset)*x
            RotMatFromVectorAndAngle(Perp, Angle)
        }

    #end

#end