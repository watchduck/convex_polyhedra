#include "light_and_axes.inc"

#include "MoveLineIntersectionByLineOffset.inc"
#include "LongCylinder.inc"


#declare A = <3, 0, 0>;
#declare B = <0, 4, 0>;
#declare C = <0, 0, -2>;

#declare BMoved = MoveLineIntersectionByLineOffset(A, B, C, .5);
#declare BDiff = BMoved - B;


sphere{A, .1   pigment{color Green}   }
sphere{C, .1   pigment{color Green}   }
sphere{B, .1   pigment{color Blue}   }

sphere{BMoved, .1   pigment{color Red}   }


LongCylinder(A, B, .01, Blue)
LongCylinder(C, B, .01, Blue)

LongCylinder(A+BDiff, BMoved, .01, Red)
LongCylinder(C+BDiff, BMoved, .01, Red)


polygon{ 3, A, B, C
    pigment{color rgbt<1, .5, 0, .6>}
}
