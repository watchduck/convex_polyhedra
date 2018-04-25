#include "light_and_axes.inc"
#include "PointCutter.inc"

#local Point = <0, 2, 0>;

difference{
    sphere{ <0, 0, 0>, 2.5 }
    PointCutter(Point, 0)
    pigment{color rgbt<1, .5, 0, .3>}
}

sphere{ Point, .1  pigment{color Red}  }