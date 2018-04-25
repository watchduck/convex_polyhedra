#include "polyhedra_with_duals.inc"

#declare ScaleFactor = 1.31;

///////////////////////////////////////// Archimedean

#declare Factor = ScaleFactor * 2.4053435187337375;
#declare Abs = array[3]{ (0.33775397381375233)*Factor, (0.6212264105565853)*Factor, (1.1426135089259621)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, }

#declare Faces = array[38]{array[4]{P[1], P[9], P[6], P[1]}, array[4]{P[1], P[3], P[6], P[1]}, array[4]{P[11], P[3], P[6], P[11]}, array[4]{P[11], P[3], P[7], P[11]}, array[4]{P[5], P[8], P[0], P[5]}, array[4]{P[15], P[10], P[7], P[15]}, array[4]{P[15], P[10], P[18], P[15]}, array[4]{P[15], P[23], P[18], P[15]}, array[4]{P[15], P[23], P[19], P[15]}, array[4]{P[22], P[23], P[19], P[22]}, array[4]{P[22], P[17], P[20], P[22]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[1], P[0], P[4]}, array[4]{P[4], P[1], P[9], P[4]}, array[4]{P[21], P[23], P[18], P[21]}, array[4]{P[21], P[16], P[20], P[21]}, array[4]{P[2], P[3], P[7], P[2]}, array[4]{P[2], P[10], P[7], P[2]}, array[4]{P[2], P[5], P[0], P[2]}, array[4]{P[2], P[5], P[10], P[2]}, array[4]{P[14], P[11], P[19], P[14]}, array[4]{P[14], P[11], P[6], P[14]}, array[4]{P[14], P[22], P[19], P[14]}, array[4]{P[14], P[22], P[17], P[14]}, array[4]{P[12], P[17], P[20], P[12]}, array[4]{P[12], P[16], P[20], P[12]}, array[4]{P[12], P[17], P[9], P[12]}, array[4]{P[12], P[4], P[9], P[12]}, array[4]{P[13], P[5], P[8], P[13]}, array[4]{P[13], P[16], P[8], P[13]}, array[4]{P[13], P[21], P[18], P[13]}, array[4]{P[13], P[21], P[16], P[13]}, array[5]{P[0], P[1], P[3], P[2], P[0]}, array[5]{P[19], P[11], P[7], P[15], P[19]}, array[5]{P[23], P[22], P[20], P[21], P[23]}, array[5]{P[5], P[13], P[18], P[10], P[5]}, array[5]{P[12], P[4], P[8], P[16], P[12]}, array[5]{P[14], P[6], P[9], P[17], P[14]}};

#declare Edges = array[60]{array[2]{1, 6}, array[2]{19, 22}, array[2]{14, 17}, array[2]{6, 9}, array[2]{9, 12}, array[2]{12, 17}, array[2]{13, 16}, array[2]{15, 19}, array[2]{3, 11}, array[2]{10, 15}, array[2]{21, 23}, array[2]{0, 1}, array[2]{8, 16}, array[2]{14, 22}, array[2]{19, 23}, array[2]{22, 23}, array[2]{11, 14}, array[2]{14, 19}, array[2]{4, 9}, array[2]{13, 18}, array[2]{9, 17}, array[2]{0, 5}, array[2]{3, 7}, array[2]{7, 15}, array[2]{0, 2}, array[2]{4, 12}, array[2]{20, 21}, array[2]{8, 13}, array[2]{7, 10}, array[2]{0, 4}, array[2]{2, 5}, array[2]{16, 20}, array[2]{12, 20}, array[2]{5, 8}, array[2]{12, 16}, array[2]{2, 10}, array[2]{6, 14}, array[2]{15, 18}, array[2]{2, 7}, array[2]{18, 23}, array[2]{3, 6}, array[2]{10, 18}, array[2]{16, 21}, array[2]{1, 3}, array[2]{5, 10}, array[2]{13, 21}, array[2]{7, 11}, array[2]{4, 8}, array[2]{2, 3}, array[2]{5, 13}, array[2]{0, 8}, array[2]{17, 20}, array[2]{17, 22}, array[2]{18, 21}, array[2]{6, 11}, array[2]{15, 23}, array[2]{1, 4}, array[2]{11, 19}, array[2]{1, 9}, array[2]{20, 22}};

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

#declare Factor = ScaleFactor * 2.4053435187337375;

#declare Abs = array[5]{ (0)*Factor, (0.21879664300048043)*Factor, (0.7401837413698572)*Factor, (1.0236561781126903)*Factor, (1.3614101519264425)*Factor, }

#declare P = array[38]{ <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <-Abs[4],Abs[0],Abs[0]>, <Abs[4],Abs[0],Abs[0]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[4],Abs[0]>, <-Abs[2],Abs[1],-Abs[3]>, <-Abs[2],-Abs[1],Abs[3]>, <Abs[2],-Abs[1],-Abs[3]>, <Abs[2],Abs[1],Abs[3]>, <-Abs[3],Abs[2],-Abs[1]>, <-Abs[3],-Abs[2],Abs[1]>, <Abs[3],-Abs[2],-Abs[1]>, <Abs[3],Abs[2],Abs[1]>, <-Abs[1],Abs[3],-Abs[2]>, <-Abs[1],-Abs[3],Abs[2]>, <Abs[1],-Abs[3],-Abs[2]>, <Abs[1],Abs[3],Abs[2]>, <-Abs[1],-Abs[2],-Abs[3]>, <-Abs[1],Abs[2],Abs[3]>, <Abs[1],Abs[2],-Abs[3]>, <Abs[1],-Abs[2],Abs[3]>, <-Abs[3],-Abs[1],-Abs[2]>, <-Abs[3],Abs[1],Abs[2]>, <Abs[3],Abs[1],-Abs[2]>, <Abs[3],-Abs[1],Abs[2]>, <-Abs[2],-Abs[3],-Abs[1]>, <-Abs[2],Abs[3],Abs[1]>, <Abs[2],Abs[3],-Abs[1]>, <Abs[2],-Abs[3],Abs[1]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, }

#declare Faces = array[24]{
    array[6]{P[0], P[18], P[30], P[22], P[6], P[0]},
    array[6]{P[0], P[8], P[34], P[16], P[18], P[0]},
    array[6]{P[0], P[20], P[36], P[24], P[8], P[0]},
    array[6]{P[0], P[6], P[32], P[14], P[20], P[0]},
    array[6]{P[1], P[19], P[33], P[23], P[7], P[1]},
    array[6]{P[1], P[9], P[37], P[17], P[19], P[1]},
    array[6]{P[1], P[21], P[35], P[25], P[9], P[1]},
    array[6]{P[1], P[7], P[31], P[15], P[21], P[1]},
    array[6]{P[2], P[23], P[33], P[27], P[10], P[2]},
    array[6]{P[2], P[11], P[31], P[7], P[23], P[2]},
    array[6]{P[2], P[22], P[30], P[26], P[11], P[2]},
    array[6]{P[2], P[10], P[32], P[6], P[22], P[2]},
    array[6]{P[3], P[25], P[35], P[29], P[12], P[3]},
    array[6]{P[3], P[13], P[37], P[9], P[25], P[3]},
    array[6]{P[3], P[24], P[36], P[28], P[13], P[3]},
    array[6]{P[3], P[12], P[34], P[8], P[24], P[3]},
    array[6]{P[4], P[29], P[35], P[21], P[15], P[4]},
    array[6]{P[4], P[16], P[34], P[12], P[29], P[4]},
    array[6]{P[4], P[26], P[30], P[18], P[16], P[4]},
    array[6]{P[4], P[15], P[31], P[11], P[26], P[4]},
    array[6]{P[5], P[28], P[36], P[20], P[14], P[5]},
    array[6]{P[5], P[17], P[37], P[13], P[28], P[5]},
    array[6]{P[5], P[27], P[33], P[19], P[17], P[5]},
    array[6]{P[5], P[14], P[32], P[10], P[27], P[5]}
}

#declare Edges = array[60]{array[2]{36, 24}, array[2]{33, 19}, array[2]{7, 1}, array[2]{15, 4}, array[2]{16, 34}, array[2]{0, 20}, array[2]{9, 37}, array[2]{11, 31}, array[2]{34, 12}, array[2]{15, 21}, array[2]{1, 9}, array[2]{26, 30}, array[2]{5, 28}, array[2]{10, 27}, array[2]{8, 24}, array[2]{30, 18}, array[2]{24, 3}, array[2]{18, 16}, array[2]{29, 35}, array[2]{0, 8}, array[2]{23, 7}, array[2]{2, 11}, array[2]{26, 4}, array[2]{6, 0}, array[2]{27, 5}, array[2]{21, 35}, array[2]{14, 5}, array[2]{5, 17}, array[2]{19, 17}, array[2]{19, 1}, array[2]{13, 3}, array[2]{22, 30}, array[2]{33, 27}, array[2]{25, 3}, array[2]{1, 21}, array[2]{31, 7}, array[2]{4, 29}, array[2]{23, 33}, array[2]{9, 25}, array[2]{36, 28}, array[2]{20, 36}, array[2]{2, 23}, array[2]{2, 22}, array[2]{22, 6}, array[2]{29, 12}, array[2]{37, 13}, array[2]{18, 0}, array[2]{12, 3}, array[2]{35, 25}, array[2]{32, 14}, array[2]{6, 32}, array[2]{17, 37}, array[2]{11, 26}, array[2]{4, 16}, array[2]{10, 32}, array[2]{28, 13}, array[2]{31, 15}, array[2]{34, 8}, array[2]{2, 10}, array[2]{14, 20}};

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
