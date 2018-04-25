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

////////////////////////////////////////// blue

#declare Torus = object{ 
    RawTorus
    rotate 45*x
}

#declare ToriX = union{
    object{Torus}
    object{Torus scale -z}
}

#declare ToriY = object{ ToriX rotate 90*z }
#declare ToriZ = object{ ToriX rotate 90*y }

union{
    object{ToriX}
    object{ToriY}
    object{ToriZ}
    texture{ TBlue }
}

