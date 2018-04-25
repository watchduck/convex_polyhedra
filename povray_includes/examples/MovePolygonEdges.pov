#include "light_and_axes.inc"

#include "MovePolygonEdges.inc"
#include "LongCylinder.inc"


#declare A = <3, 0, 0>;
#declare B = <0, 4, 0>;
#declare C = <0, 0, -2>;
#declare D = <2.25, -1, -1>;

#declare Points = array[4]{ A, B, C, D };
#declare NewPoints = MovePolygonEdges(Points, .5);


#for(Index, 0, 3)
    sphere{ Points[Index], .1   pigment{color Blue}   }
    sphere{ NewPoints[Index], .1   pigment{color Red}   }
#end


LongCylinder(Points[0], Points[1], .01, Blue)
LongCylinder(Points[1], Points[2], .01, Blue)
LongCylinder(Points[2], Points[3], .01, Blue)
LongCylinder(Points[3], Points[0], .01, Blue)

LongCylinder(NewPoints[0], NewPoints[1], .01, Red)
LongCylinder(NewPoints[1], NewPoints[2], .01, Red)
LongCylinder(NewPoints[2], NewPoints[3], .01, Red)
LongCylinder(NewPoints[3], NewPoints[0], .01, Red)


polygon{ 4, Points[0], Points[1], Points[2], Points[3]
    pigment{color rgbt<1, .5, 0, .6>}
}

polygon{
    4, NewPoints[0], NewPoints[1], NewPoints[2], NewPoints[3]
    pigment{color rgbt<1, .5, 0, .3>}
    translate .0001 * <1, 1, -1>
}
