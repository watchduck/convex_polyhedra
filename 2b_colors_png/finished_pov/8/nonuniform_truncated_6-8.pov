#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// cuboctahedron wireframe

#declare Factor = sqrt(6);

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare BlueVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare UncoloredEdges = array[24]{array[2]{2, 5}, array[2]{1, 3}, array[2]{6, 9}, array[2]{4, 9}, array[2]{1, 4}, array[2]{1, 6}, array[2]{6, 11}, array[2]{7, 10}, array[2]{0, 5}, array[2]{5, 8}, array[2]{2, 7}, array[2]{4, 8}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{5, 10}, array[2]{7, 11}, array[2]{0, 2}, array[2]{8, 10}, array[2]{9, 11}, array[2]{8, 9}, array[2]{3, 6}, array[2]{3, 7}, array[2]{10, 11}};


union{
    #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
        sphere{ P[Index], .02 }
    #end
    texture{ TGray }
}

union{
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], .02 }
    #end
    texture{ TGray }
}


// cube solid

#declare Factor = sqrt(6);
#declare FaceNormalPoints = array[6]{<-1, 0, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <1, 0, 0>*Factor, <0, 0, 1>*Factor, <0, 1, 0>*Factor};
#declare Cube = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TRed }
}



// octahedron solid

#declare Factor = 2*sqrt(6);
#declare FaceNormalPoints = array[8]{<-1/3, -1/3, -1/3>*Factor, <1/3, -1/3, -1/3>*Factor, <-1/3, 1/3, 1/3>*Factor, <1/3, -1/3, 1/3>*Factor, <1/3, 1/3, -1/3>*Factor, <-1/3, 1/3, -1/3>*Factor, <1/3, 1/3, 1/3>*Factor, <-1/3, -1/3, 1/3>*Factor};
#declare Octahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TYellow }
}


// cuboctahedron solid

#declare Cuboctahedron = intersection{
    object{Cube}
    object{Octahedron}
}


// determine truncation depth

#declare ScaleFactor = .84;

// rhombic dodecahedron solid

#declare Factor = 8*sqrt(3)/3;
#declare FaceNormalPoints = array[12]{<3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, -3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <-3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor, <0, -3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <0, -3*sqrt(2)/8, -3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor};
#declare RhombicDodecahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TBlue }
}
#declare NegativeRhombicDodecahedron = difference{
    sphere{<0, 0, 0>, 10}
    RhombicDodecahedron
    scale ScaleFactor
}

// truncated cuboctahedron solid

difference{
    object{Cuboctahedron}
    object{NegativeRhombicDodecahedron}
}






















