#include "polyhedra_colors.inc"
#include "RotMatFromVectorAndAngle.inc"

#declare MajorRad = 4.1;
#declare MinorRad = .035;


sphere{<0, 0, 0>, MajorRad   pigment{color rgbt <.9, .9, .9, .2>}  }


#declare RawTorus = union{
    torus { MajorRad, MinorRad }
    sphere{ <0, MajorRad, 0>, RadVert }
    sphere{ <0, -MajorRad, 0>, RadVert }
}

////////////////////////////////////////// red

#declare Torus = RawTorus

union {
    object{Torus}
    object{Torus rotate 90*x}
    object{Torus rotate 90*z}
    texture{ TRed }
}

