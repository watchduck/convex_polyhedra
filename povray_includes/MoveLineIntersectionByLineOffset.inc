#include "math.inc"


#macro MoveLineIntersectionByLineOffset(A, B, C, Offset)

    // AB and BC are edges of a polygon. The edges are moved to the inside by `Offset`.
    // The intersection point B' of the moved edges is returned.

    // `Angle` `SideLen` and `DiagLen` refer to a rhombus. `Offset` is the height.
    // The diagonal is the one through `Angle`.

    #declare U = A-B;
    #declare V = C-B;

    #declare Angle = VAngle(U, V);
    #declare SideLen = Offset / sin(Angle);
    #declare DiagLen = sqrt( 2 * pow(SideLen, 2) * (1+cos(Angle)) );
    #declare DiagDir = vnormalize( vnormalize(U) + vnormalize(V) );
    #declare Translate = DiagDir * DiagLen;

    B + Translate

#end
