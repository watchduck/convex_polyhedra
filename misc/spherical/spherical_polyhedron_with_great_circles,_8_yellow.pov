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

////////////////////////////////////////// yellow

#declare Point0 = <2, 0, 2>;
#declare PointT = <1, 2, 1>;

#declare Angle = VAngle(PointT, Point0);
#declare Perp = VPerp_To_Plane(PointT, Point0);

#declare Torus = object{
    RawTorus
    RotMatFromVectorAndAngle(Perp, Angle)
}

#declare Tori = union{
    object{Torus}
    object{Torus scale -x}
    
}

#declare Tori = union{
    object{Tori}
    object{Tori scale -z}
    
}

union{
    object{Tori}
    texture{ TYellow }
}

