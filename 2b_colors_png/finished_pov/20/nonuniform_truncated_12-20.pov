#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// icosidodecahedron wireframe

#declare Factor = 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare BlueVertices = array[30]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};

#declare UncoloredEdges = array[60]{array[2]{12, 20}, array[2]{25, 26}, array[2]{11, 16}, array[2]{16, 20}, array[2]{3, 7}, array[2]{22, 26}, array[2]{6, 15}, array[2]{22, 24}, array[2]{21, 23}, array[2]{15, 24}, array[2]{23, 27}, array[2]{18, 26}, array[2]{2, 6}, array[2]{11, 19}, array[2]{0, 4}, array[2]{5, 14}, array[2]{5, 9}, array[2]{8, 15}, array[2]{6, 8}, array[2]{14, 21}, array[2]{0, 2}, array[2]{18, 22}, array[2]{16, 19}, array[2]{7, 14}, array[2]{13, 18}, array[2]{6, 10}, array[2]{1, 5}, array[2]{0, 3}, array[2]{12, 16}, array[2]{9, 17}, array[2]{7, 11}, array[2]{20, 28}, array[2]{17, 21}, array[2]{17, 25}, array[2]{24, 28}, array[2]{27, 29}, array[2]{27, 28}, array[2]{20, 24}, array[2]{25, 29}, array[2]{4, 8}, array[2]{15, 22}, array[2]{19, 23}, array[2]{8, 12}, array[2]{10, 18}, array[2]{13, 17}, array[2]{3, 11}, array[2]{19, 27}, array[2]{1, 9}, array[2]{5, 7}, array[2]{2, 10}, array[2]{3, 4}, array[2]{0, 1}, array[2]{21, 25}, array[2]{9, 13}, array[2]{28, 29}, array[2]{10, 13}, array[2]{26, 29}, array[2]{14, 23}, array[2]{4, 12}, array[2]{1, 2}};


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


// dodecahedron solid

#declare Factor = 6*(1/2 + sqrt(5)/2)/((-1 + sqrt(5))*(sqrt(5)/4 + 0.75)*sqrt(2*sqrt(5) + 5));
#declare FaceNormalPoints = array[12]{<(1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), -3*sqrt(5)/10 - 1/2, 0>*Factor, <0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), 1/2 + 3*sqrt(5)/10>*Factor, <(-1 + sqrt(5))*(sqrt(5)/5 + 1/2), 0, (-sqrt(5) + 3)*(sqrt(5)/5 + 1/2)>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <0, (1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), 1/2 + 3*sqrt(5)/10>*Factor, <(-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4), 1/2 + 3*sqrt(5)/10, 0>*Factor, <0, (-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1 + sqrt(5))*(-1/2 - sqrt(5)/5)>*Factor, <(-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), -3*sqrt(5)/10 - 1/2, 0>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/5 + 1/2), 0, (-sqrt(5) + 3)*(sqrt(5)/5 + 1/2)>*Factor, <0, (-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1 + sqrt(5))*(-1/2 - sqrt(5)/5)>*Factor, <(-1 + sqrt(5))*(sqrt(5)/5 + 1/2), 0, (-3 + sqrt(5))*(sqrt(5)/5 + 1/2)>*Factor, <(1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), 1/2 + 3*sqrt(5)/10, 0>*Factor};
#declare Dodecahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TRed }
}



// icosahedron solid

#declare Factor = 6*(1/2 + sqrt(5)/2)/((0.5 + sqrt(5)/2)*sqrt(2*sqrt(5) + 5));
#declare FaceNormalPoints = array[20]{<(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0>*Factor, <(-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <-(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4)>*Factor, <(-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4)>*Factor};
#declare Icosahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TYellow }
}


// icosidodecahedron solid

#declare Icosidodecahedron = intersection{
    object{Dodecahedron}
    object{Icosahedron}
}


// determine truncation depth

#declare ScaleFactor = .94;

// rhombic triacontahedron solid

#declare Factor = 6*(1/2 + sqrt(5)/2)/((0.625 + 3*sqrt(5)/8)*sqrt(2*sqrt(5) + 5));
#declare FaceNormalPoints = array[30]{<0, 0, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16>*Factor, <0, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0>*Factor, <-(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <sqrt(5)/16 + 5/16, -5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <sqrt(5)/16 + 5/16, -5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <0, 0, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16>*Factor, <(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <sqrt(5)/16 + 5/16, 5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <-5/16 - sqrt(5)/16, 5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0, 0>*Factor, <5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, 5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32>*Factor, <0, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16, 0>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16, 0, 0>*Factor, <-5/16 - sqrt(5)/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor};

#declare RhombicTriacontahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TBlue }
}
#declare NegativeRhombicTriacontahedron = difference{
    sphere{<0, 0, 0>, 10}
    RhombicTriacontahedron
    scale ScaleFactor
}

// truncated icosidodecahedron solid

difference{
    object{Icosidodecahedron}
    object{NegativeRhombicTriacontahedron}
}



















