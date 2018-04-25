#include "polyhedra_colors.inc"
#include "SolidFromFaceNormalPoints"


// icosidodecahedron wireframe

#declare Factor = 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[5]{ (0)*Factor, (0.5)*Factor, (1/4 + sqrt(5)/4)*Factor, (pow(1/2 + sqrt(5)/2, 2)/2)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[30]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare Edges = array[60]{array[2]{8, 15}, array[2]{3, 11}, array[2]{20, 24}, array[2]{11, 19}, array[2]{5, 14}, array[2]{19, 27}, array[2]{25, 29}, array[2]{6, 10}, array[2]{15, 24}, array[2]{1, 2}, array[2]{21, 23}, array[2]{5, 7}, array[2]{10, 13}, array[2]{23, 27}, array[2]{18, 26}, array[2]{24, 28}, array[2]{25, 26}, array[2]{26, 29}, array[2]{27, 29}, array[2]{5, 9}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{20, 28}, array[2]{19, 23}, array[2]{9, 17}, array[2]{12, 16}, array[2]{11, 16}, array[2]{28, 29}, array[2]{13, 18}, array[2]{21, 25}, array[2]{14, 21}, array[2]{3, 4}, array[2]{18, 22}, array[2]{7, 14}, array[2]{17, 25}, array[2]{14, 23}, array[2]{0, 3}, array[2]{0, 1}, array[2]{8, 12}, array[2]{12, 20}, array[2]{10, 18}, array[2]{22, 24}, array[2]{4, 12}, array[2]{16, 19}, array[2]{7, 11}, array[2]{0, 2}, array[2]{15, 22}, array[2]{27, 28}, array[2]{1, 9}, array[2]{0, 4}, array[2]{13, 17}, array[2]{6, 8}, array[2]{2, 10}, array[2]{17, 21}, array[2]{22, 26}, array[2]{4, 8}, array[2]{9, 13}, array[2]{1, 5}, array[2]{6, 15}};

union{
    #for( Index, 0, 29 )
        sphere{ P[Index], .02 }
    #end

    #for( Index, 0, 59 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], .02 }
    #end

    pigment{color rgb .08}
}

// rhombic triacontahedron wireframe

#declare Factor = 6/sqrt(2*sqrt(5) + 5);

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(5)/4)*Factor, (sqrt(5)/8 + 5/8)*Factor, (5/8 + 3*sqrt(5)/8)*Factor, }

#declare P = array[32]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[0],-Abs[2]>, <-Abs[3],Abs[0],Abs[2]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[3],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <-Abs[0],-Abs[3],-Abs[1]>, <-Abs[0],-Abs[3],Abs[1]>, <-Abs[0],-Abs[2],-Abs[3]>, <-Abs[0],-Abs[2],Abs[3]>, <-Abs[0],Abs[2],-Abs[3]>, <-Abs[0],Abs[2],Abs[3]>, <-Abs[0],Abs[3],-Abs[1]>, <-Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[3],Abs[0]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[0],-Abs[2]>, <Abs[3],Abs[0],Abs[2]>, <Abs[3],Abs[1],Abs[0]>, }

#declare Edges = array[60]{array[2]{14, 20}, array[2]{17, 21}, array[2]{22, 24}, array[2]{30, 31}, array[2]{11, 17}, array[2]{14, 23}, array[2]{24, 30}, array[2]{28, 30}, array[2]{23, 29}, array[2]{19, 27}, array[2]{12, 14}, array[2]{0, 1}, array[2]{15, 24}, array[2]{4, 5}, array[2]{8, 9}, array[2]{16, 25}, array[2]{22, 28}, array[2]{2, 8}, array[2]{17, 19}, array[2]{9, 18}, array[2]{26, 30}, array[2]{4, 12}, array[2]{25, 29}, array[2]{22, 23}, array[2]{6, 15}, array[2]{12, 22}, array[2]{16, 18}, array[2]{28, 29}, array[2]{7, 16}, array[2]{5, 14}, array[2]{2, 6}, array[2]{1, 7}, array[2]{4, 6}, array[2]{4, 13}, array[2]{2, 11}, array[2]{13, 15}, array[2]{13, 22}, array[2]{25, 27}, array[2]{29, 31}, array[2]{2, 3}, array[2]{10, 16}, array[2]{15, 21}, array[2]{17, 26}, array[2]{1, 5}, array[2]{1, 10}, array[2]{0, 4}, array[2]{3, 9}, array[2]{8, 17}, array[2]{10, 14}, array[2]{21, 30}, array[2]{27, 31}, array[2]{18, 27}, array[2]{20, 29}, array[2]{9, 19}, array[2]{26, 27}, array[2]{16, 20}, array[2]{11, 15}, array[2]{0, 2}, array[2]{1, 3}, array[2]{7, 9}};

union{
    #for( Index, 0, 31 )
        sphere{ P[Index], .02 }
    #end

    #for( Index, 0, 59 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], .02 }
    #end

    texture{ TGray }
}


// dodecahedron solid

#declare Factor = 1.95;
#declare FaceNormalPoints = array[12]{<(1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), -3*sqrt(5)/10 - 1/2, 0>*Factor, <0, (-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), 1/2 + 3*sqrt(5)/10>*Factor, <(-1 + sqrt(5))*(sqrt(5)/5 + 1/2), 0, (-sqrt(5) + 3)*(sqrt(5)/5 + 1/2)>*Factor, <-3*sqrt(5)/10 - 1/2, 0, (-1 + sqrt(5))*(-3*sqrt(5)/20 - 1/4)>*Factor, <0, (1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), 1/2 + 3*sqrt(5)/10>*Factor, <(-sqrt(5) + 1)*(-3*sqrt(5)/20 - 1/4), 1/2 + 3*sqrt(5)/10, 0>*Factor, <0, (-3 + sqrt(5))*(-1/2 - sqrt(5)/5), (-1 + sqrt(5))*(-1/2 - sqrt(5)/5)>*Factor, <(-1 + sqrt(5))*(1/4 + 3*sqrt(5)/20), -3*sqrt(5)/10 - 1/2, 0>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/5 + 1/2), 0, (-sqrt(5) + 3)*(sqrt(5)/5 + 1/2)>*Factor, <0, (-1/2 - sqrt(5)/5)*(-sqrt(5) + 3), (-1 + sqrt(5))*(-1/2 - sqrt(5)/5)>*Factor, <(-1 + sqrt(5))*(sqrt(5)/5 + 1/2), 0, (-3 + sqrt(5))*(sqrt(5)/5 + 1/2)>*Factor, <(1/4 + 3*sqrt(5)/20)*(-sqrt(5) + 1), 1/2 + 3*sqrt(5)/10, 0>*Factor};
#declare Dodecahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TRed }
}
#declare NegativeDodecahedron = difference{
    sphere{<0, 0, 0>, 10}
    Dodecahedron
}


// icosahedron solid

#declare Factor = 1.95;
#declare FaceNormalPoints = array[20]{<(-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <-1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0>*Factor, <(-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4)>*Factor, <(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4), 0>*Factor, <0, (-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <-(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1), 0>*Factor, <-1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, sqrt(5)/6 + 1/2>*Factor, <0, (1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4)>*Factor, <(-1 + sqrt(5))*(-1/4 - sqrt(5)/12), 0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5))>*Factor, <0, -(-1/4 - sqrt(5)/12)*(1 + sqrt(5)), (-1/4 - sqrt(5)/12)*(-sqrt(5) + 1)>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6>*Factor, <sqrt(5)/6 + 1/2, -1/2 - sqrt(5)/6, -1/2 - sqrt(5)/6>*Factor, <-(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-1 + sqrt(5))*(sqrt(5)/12 + 1/4), 0>*Factor, <sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2, sqrt(5)/6 + 1/2>*Factor, <0, -(1 + sqrt(5))*(sqrt(5)/12 + 1/4), (-sqrt(5) + 1)*(sqrt(5)/12 + 1/4)>*Factor};
#declare Icosahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TYellow }
}
#declare NegativeIcosahedron = difference{
    sphere{<0, 0, 0>, 10}
    Icosahedron
}


// rhombic triacontahedron solid

#declare Factor = 6/sqrt(2*sqrt(5) + 5);
#declare FaceNormalPoints = array[30]{<0, 0, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16>*Factor, <0, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0>*Factor, <-(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <sqrt(5)/16 + 5/16, -5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <sqrt(5)/16 + 5/16, -5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <0, 0, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16>*Factor, <(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <sqrt(5)/16 + 5/16, 5*(sqrt(5)/5 + 1)*(sqrt(5) + 3)/32, -5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <-5/16 - sqrt(5)/16, 5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/16, 0, 0>*Factor, <5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16>*Factor, <5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, -(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64>*Factor, <-(-1 - sqrt(5)/5)*pow(sqrt(5) + 5, 2)/64, 5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, sqrt(5)/16 + 5/16>*Factor, <sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/32, -5/16 - sqrt(5)/16, 5*(-1 - sqrt(5)/5)*(sqrt(5) + 3)/32>*Factor, <0, -5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16, 0>*Factor, <-5*(-1 - sqrt(5)/5)*(1 + sqrt(5))/16, 0, 0>*Factor, <-5/16 - sqrt(5)/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64, 5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32>*Factor, <5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, sqrt(5)/16 + 5/16, (sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor, <-5*(1 + sqrt(5))*(sqrt(5)/5 + 1)/32, -5/16 - sqrt(5)/16, -(sqrt(5)/5 + 1)*pow(sqrt(5) + 5, 2)/64>*Factor};

#declare RhombicTriacontahedron = object{
    SolidFromFaceNormalPoints(FaceNormalPoints, 0)
    texture{ TBlue }
}


// difference

difference{
    object{RhombicTriacontahedron}
    object{NegativeDodecahedron}
    object{NegativeIcosahedron}
}

