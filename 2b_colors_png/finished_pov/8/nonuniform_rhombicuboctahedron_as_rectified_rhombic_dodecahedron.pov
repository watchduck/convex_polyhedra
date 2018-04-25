#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// rhomic dodecahedron wireframe

#declare Factor = 2*sqrt(3);

#declare Abs = array[3]{ (0.0)*Factor, (3*sqrt(2)/8)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare UncoloredEdges = array[24]{array[2]{1, 5}, array[2]{1, 6}, array[2]{6, 11}, array[2]{4, 8}, array[2]{3, 8}, array[2]{11, 13}, array[2]{9, 13}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{8, 11}, array[2]{0, 2}, array[2]{7, 12}, array[2]{6, 9}, array[2]{12, 13}, array[2]{8, 12}, array[2]{7, 10}, array[2]{10, 13}, array[2]{0, 1}, array[2]{0, 4}, array[2]{3, 6}, array[2]{0, 3}, array[2]{2, 5}, array[2]{5, 9}};

union{
    #for( Index, 0, 13 )
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

#declare Factor = 2.759;
#declare FaceNormalPoints = array[6]{<-1, 0, 0>*Factor, <0, 0, -1>*Factor, <0, -1, 0>*Factor, <1, 0, 0>*Factor, <0, 0, 1>*Factor, <0, 1, 0>*Factor};
#declare Cube = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TRed }
}
#declare NegativeCube = difference{
    sphere{<0, 0, 0>, 10}
    Cube
}

// octahedron solid

#declare Factor = 4.59;
#declare FaceNormalPoints = array[8]{<-1/3, -1/3, -1/3>*Factor, <1/3, -1/3, -1/3>*Factor, <-1/3, 1/3, 1/3>*Factor, <1/3, -1/3, 1/3>*Factor, <1/3, 1/3, -1/3>*Factor, <-1/3, 1/3, -1/3>*Factor, <1/3, 1/3, 1/3>*Factor, <-1/3, -1/3, 1/3>*Factor};
#declare Octahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TYellow }
}
#declare NegativeOctahedron = difference{
    sphere{<0, 0, 0>, 10}
    Octahedron
}


// rhombic dodecahedron solid

#declare Factor = 2*sqrt(3);
#declare FaceNormalPoints = array[12]{<3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, -3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <-3*sqrt(2)/8, 3*sqrt(2)/8, 0>*Factor, <3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor, <0, -3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <0, -3*sqrt(2)/8, -3*sqrt(2)/8>*Factor, <3*sqrt(2)/8, 0, -3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, 0, 3*sqrt(2)/8>*Factor, <0, 3*sqrt(2)/8, 3*sqrt(2)/8>*Factor, <-3*sqrt(2)/8, -3*sqrt(2)/8, 0>*Factor};
#declare RhombicDodecahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TBlue }
}


// difference

difference{
    object{RhombicDodecahedron}
    object{NegativeCube}
    object{NegativeOctahedron}
}


























