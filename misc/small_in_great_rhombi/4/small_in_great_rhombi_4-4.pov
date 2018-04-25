#include "small_in_great_rhombi.inc"

#include "LongCylinder.inc"


#declare Factor = 1;

#declare Scale = 1.89;
#declare RadVert = RadVert / Scale;
#declare RadEdge = RadEdge / Scale;


union{



//////////////////////////////////////////////////////////////////// small

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare Edges = array[24]{array[2]{8, 10}, array[2]{1, 3}, array[2]{0, 5}, array[2]{0, 1}, array[2]{7, 10}, array[2]{5, 8}, array[2]{2, 5}, array[2]{3, 6}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 7}, array[2]{5, 10}, array[2]{2, 3}, array[2]{1, 4}, array[2]{4, 9}, array[2]{4, 8}, array[2]{6, 9}, array[2]{10, 11}, array[2]{9, 11}, array[2]{8, 9}, array[2]{6, 11}};

#declare Faces = array[14]{array[4]{P[7], P[2], P[3], P[7]}, array[4]{P[5], P[2], P[0], P[5]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[10], P[5], P[8], P[10]}, array[4]{P[11], P[10], P[7], P[11]}, array[4]{P[6], P[1], P[3], P[6]}, array[4]{P[9], P[4], P[8], P[9]}, array[4]{P[9], P[6], P[11], P[9]}, array[5]{P[11], P[10], P[8], P[9], P[11]}, array[5]{P[7], P[3], P[6], P[11], P[7]}, array[5]{P[4], P[1], P[6], P[9], P[4]}, array[5]{P[0], P[5], P[8], P[4], P[0]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[5], P[2], P[7], P[10], P[5]}};

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadVert*1.6 }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge*1.6 }
    #end

    pigment{ color SmallDark }
}

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    pigment{ color FaceColor }
}


//////////////////////////////////////////////////////////////////// great

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }

#declare Edges = array[36]{array[2]{8, 10}, array[2]{21, 23}, array[2]{15, 19}, array[2]{3, 7}, array[2]{16, 20}, array[2]{2, 6}, array[2]{19, 23}, array[2]{9, 16}, array[2]{5, 10}, array[2]{2, 3}, array[2]{4, 9}, array[2]{13, 18}, array[2]{5, 12}, array[2]{9, 11}, array[2]{18, 22}, array[2]{6, 13}, array[2]{1, 3}, array[2]{7, 14}, array[2]{0, 1}, array[2]{12, 17}, array[2]{20, 21}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{10, 17}, array[2]{20, 22}, array[2]{8, 16}, array[2]{7, 15}, array[2]{0, 4}, array[2]{14, 19}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{1, 5}, array[2]{22, 23}, array[2]{6, 11}};

#declare Faces = array[14]{array[7]{P[2], P[6], P[13], P[15], P[7], P[3], P[2]}, array[7]{P[4], P[0], P[1], P[5], P[10], P[8], P[4]}, array[7]{P[17], P[12], P[14], P[19], P[23], P[21], P[17]}, array[5]{P[19], P[15], P[7], P[14], P[19]}, array[7]{P[13], P[18], P[22], P[23], P[19], P[15], P[13]}, array[7]{P[9], P[4], P[0], P[2], P[6], P[11], P[9]}, array[7]{P[14], P[7], P[3], P[1], P[5], P[12], P[14]}, array[7]{P[20], P[16], P[8], P[10], P[17], P[21], P[20]}, array[7]{P[9], P[16], P[20], P[22], P[18], P[11], P[9]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[16], P[8], P[4], P[9], P[16]}, array[5]{P[12], P[5], P[10], P[17], P[12]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[13], P[6], P[11], P[18], P[13]}};

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadVert }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color GreatDark }
}

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    pigment{ color FaceColor }
}


//////////////////////////////////////////////////////////////////// cuboids

#declare Abs = array[3]{ (0)*Factor, (0.5)*Factor, (1)*Factor, }

#declare Cuboid = union{ 
    cylinder{ <-Abs[2], -Abs[1], Abs[0]>, <-Abs[2], Abs[1], Abs[0]>, RadEdge/3 }
    cylinder{ <Abs[0], -Abs[1], -Abs[2]>, <Abs[0], Abs[1], -Abs[2]>, RadEdge/3 }
    cylinder{ <Abs[0], -Abs[1], Abs[2]>, <Abs[0], Abs[1], Abs[2]>, RadEdge/3 }
    cylinder{ <Abs[2], -Abs[1], Abs[0]>, <Abs[2], Abs[1], Abs[0]>, RadEdge/3 }
    pigment{ color LineColor }
    translate 1.5*y 
}

#declare CuboidsY = union{
    object{Cuboid}
    object{Cuboid rotate 180*z}
}

#declare CuboidsZ = object{CuboidsY rotate 90*x}

#declare CuboidsX = object{CuboidsY rotate 90*z}

object{CuboidsX}
object{CuboidsY}
object{CuboidsZ}



scale Scale
}
