#include "polyhedra_with_duals.inc"

#declare ScaleFactor = 1.32;

///////////////////////////////////////// Archimedean

#declare Factor = ScaleFactor * 3/sqrt(2*sqrt(2) + 4);

#declare Abs = array[2]{ (1)*Factor, (1 + sqrt(2))*Factor}

#declare P = array[24]{ <-Abs[1],-Abs[0],-Abs[0]>, <-Abs[1],-Abs[0],Abs[0]>, <-Abs[1],Abs[0],-Abs[0]>, <-Abs[1],Abs[0],Abs[0]>, <-Abs[0],-Abs[1],-Abs[0]>, <-Abs[0],-Abs[1],Abs[0]>, <-Abs[0],-Abs[0],-Abs[1]>, <-Abs[0],-Abs[0],Abs[1]>, <-Abs[0],Abs[0],-Abs[1]>, <-Abs[0],Abs[0],Abs[1]>, <-Abs[0],Abs[1],-Abs[0]>, <-Abs[0],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],-Abs[0],-Abs[1]>, <Abs[0],-Abs[0],Abs[1]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],-Abs[0]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],-Abs[0],-Abs[0]>, <Abs[1],-Abs[0],Abs[0]>, <Abs[1],Abs[0],-Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare Faces = array[26]{array[4]{P[4], P[6], P[0], P[4]}, array[4]{P[9], P[11], P[3], P[9]}, array[4]{P[19], P[23], P[17], P[19]}, array[4]{P[22], P[16], P[18], P[22]}, array[4]{P[8], P[2], P[10], P[8]}, array[4]{P[13], P[21], P[15], P[13]}, array[4]{P[5], P[1], P[7], P[5]}, array[4]{P[12], P[14], P[20], P[12]}, array[5]{P[17], P[15], P[21], P[23], P[17]}, array[5]{P[10], P[8], P[16], P[18], P[10]}, array[5]{P[12], P[20], P[21], P[13], P[12]}, array[5]{P[3], P[9], P[7], P[1], P[3]}, array[5]{P[4], P[12], P[14], P[6], P[4]}, array[5]{P[15], P[7], P[5], P[13], P[15]}, array[5]{P[0], P[1], P[5], P[4], P[0]}, array[5]{P[16], P[14], P[6], P[8], P[16]}, array[5]{P[22], P[20], P[14], P[16], P[22]}, array[5]{P[11], P[10], P[18], P[19], P[11]}, array[5]{P[11], P[9], P[17], P[19], P[11]}, array[5]{P[10], P[11], P[3], P[2], P[10]}, array[5]{P[8], P[6], P[0], P[2], P[8]}, array[5]{P[21], P[23], P[22], P[20], P[21]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[7], P[9], P[17], P[15], P[7]}, array[5]{P[13], P[5], P[4], P[12], P[13]}, array[5]{P[18], P[22], P[23], P[19], P[18]}};

#declare Edges = array[48]{array[2]{7, 9}, array[2]{8, 10}, array[2]{3, 11}, array[2]{11, 19}, array[2]{15, 21}, array[2]{21, 23}, array[2]{5, 7}, array[2]{12, 13}, array[2]{0, 6}, array[2]{17, 19}, array[2]{19, 23}, array[2]{4, 5}, array[2]{16, 18}, array[2]{9, 17}, array[2]{2, 3}, array[2]{14, 16}, array[2]{9, 11}, array[2]{18, 22}, array[2]{1, 7}, array[2]{1, 3}, array[2]{4, 6}, array[2]{3, 9}, array[2]{13, 21}, array[2]{0, 1}, array[2]{16, 22}, array[2]{12, 20}, array[2]{10, 18}, array[2]{20, 21}, array[2]{4, 12}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{20, 22}, array[2]{17, 23}, array[2]{8, 16}, array[2]{2, 8}, array[2]{6, 14}, array[2]{18, 19}, array[2]{14, 20}, array[2]{15, 17}, array[2]{0, 4}, array[2]{7, 15}, array[2]{2, 10}, array[2]{6, 8}, array[2]{10, 11}, array[2]{1, 5}, array[2]{22, 23}, array[2]{5, 13}};

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
    texture{ Wood14_with_turbulence_lightened }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color DarkGray }
}


///////////////////////////////////////// Catalan

#declare Factor = ScaleFactor * 6/sqrt(2*sqrt(2) + 4);

#declare Abs = array[4]{ (0.0)*Factor, (sqrt(2)/7 + 4/7)*Factor, (1.0)*Factor, (sqrt(2))*Factor, }

#declare P = array[26]{ <-Abs[3],Abs[0],Abs[0]>, <-Abs[2],-Abs[2],Abs[0]>, <-Abs[2],Abs[0],-Abs[2]>, <-Abs[2],Abs[0],Abs[2]>, <-Abs[2],Abs[2],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[3],Abs[0]>, <Abs[0],-Abs[2],-Abs[2]>, <Abs[0],-Abs[2],Abs[2]>, <Abs[0],Abs[0],-Abs[3]>, <Abs[0],Abs[0],Abs[3]>, <Abs[0],Abs[2],-Abs[2]>, <Abs[0],Abs[2],Abs[2]>, <Abs[0],Abs[3],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[2]>, <Abs[2],Abs[0],Abs[2]>, <Abs[2],Abs[2],Abs[0]>, <Abs[3],Abs[0],Abs[0]>, }

#declare Faces = array[24]{array[5]{P[7], P[14], P[12], P[2], P[7]}, array[5]{P[18], P[23], P[25], P[21], P[18]}, array[5]{P[9], P[1], P[6], P[11], P[9]}, array[5]{P[6], P[11], P[13], P[3], P[6]}, array[5]{P[4], P[8], P[3], P[0], P[4]}, array[5]{P[1], P[0], P[2], P[5], P[1]}, array[5]{P[12], P[14], P[19], P[22], P[12]}, array[5]{P[25], P[24], P[20], P[23], P[25]}, array[5]{P[17], P[22], P[25], P[21], P[17]}, array[5]{P[19], P[22], P[25], P[24], P[19]}, array[5]{P[5], P[10], P[9], P[1], P[5]}, array[5]{P[10], P[12], P[2], P[5], P[10]}, array[5]{P[18], P[21], P[9], P[11], P[18]}, array[5]{P[16], P[4], P[7], P[14], P[16]}, array[5]{P[13], P[15], P[8], P[3], P[13]}, array[5]{P[10], P[17], P[21], P[9], P[10]}, array[5]{P[20], P[15], P[16], P[24], P[20]}, array[5]{P[0], P[3], P[6], P[1], P[0]}, array[5]{P[13], P[15], P[20], P[23], P[13]}, array[5]{P[11], P[13], P[23], P[18], P[11]}, array[5]{P[17], P[10], P[12], P[22], P[17]}, array[5]{P[8], P[15], P[16], P[4], P[8]}, array[5]{P[14], P[16], P[24], P[19], P[14]}, array[5]{P[7], P[4], P[0], P[2], P[7]}};

#declare Edges = array[48]{array[2]{8, 15}, array[2]{3, 8}, array[2]{20, 24}, array[2]{20, 23}, array[2]{11, 13}, array[2]{19, 22}, array[2]{2, 5}, array[2]{9, 21}, array[2]{19, 24}, array[2]{10, 12}, array[2]{9, 10}, array[2]{16, 24}, array[2]{23, 25}, array[2]{2, 7}, array[2]{5, 10}, array[2]{4, 7}, array[2]{14, 16}, array[2]{2, 12}, array[2]{21, 25}, array[2]{15, 16}, array[2]{17, 22}, array[2]{9, 11}, array[2]{3, 13}, array[2]{7, 14}, array[2]{0, 3}, array[2]{0, 1}, array[2]{4, 16}, array[2]{12, 22}, array[2]{3, 6}, array[2]{22, 25}, array[2]{12, 14}, array[2]{13, 15}, array[2]{0, 2}, array[2]{1, 6}, array[2]{10, 17}, array[2]{18, 23}, array[2]{1, 9}, array[2]{24, 25}, array[2]{0, 4}, array[2]{14, 19}, array[2]{13, 23}, array[2]{11, 18}, array[2]{17, 21}, array[2]{4, 8}, array[2]{18, 21}, array[2]{1, 5}, array[2]{15, 20}, array[2]{6, 11}};

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
    texture{ Wood14_with_turbulence_calm }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color LightGray }
}
