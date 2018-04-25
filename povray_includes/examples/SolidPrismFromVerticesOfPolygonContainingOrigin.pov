#include "light_and_axes.inc"
#include "SolidPrismFromVerticesOfPolygonContainingOrigin.inc"


#declare A = <-2, -2, -2>;
#declare B = <3, -2, -2>;
#declare C = <1, 2, 2>;

#declare Points = array[4]{A, B, C, A};

object{
    SolidPrismFromVerticesOfPolygonContainingOrigin(Points, 0, .2)
    pigment{color rgbt<1, .5, 0, .3>}
}
