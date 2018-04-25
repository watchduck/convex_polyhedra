#include "light_and_axes.inc"
#include "SolidFromFaceNormalPoints.inc"


#declare A = .5;
#declare B = 1;

#declare Points = array[5]{ 
    <-A, B, A>, <-A, -B, A>, <-A, B, -A>, <-A, -B, -A>,  <1, 0, 0>, 
};

object{
    SolidFromFaceNormalPoints(Points, 0)
    pigment{color rgbt<1, .5, 0, .3>}
}

#for(Index, 0, 4)
    sphere{ Points[Index], .1  pigment{color Red}  }
#end

