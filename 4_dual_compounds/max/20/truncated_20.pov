#include "polyhedra_with_duals.inc"

#declare ScaleFactor = 1.34;

///////////////////////////////////////// Archimedean

#declare Factor = ScaleFactor * 3/(3/2 + 3*sqrt(5)/2);

#declare Abs = array[8]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (2 + sqrt(5))*Factor, (3/2 + 3*sqrt(5)/2)*Factor, }

#declare P = array[60]{ <-Abs[7],Abs[0],-Abs[1]>, <-Abs[7],Abs[0],Abs[1]>, <-Abs[6],-Abs[2],-Abs[3]>, <-Abs[6],-Abs[2],Abs[3]>, <-Abs[6],Abs[2],-Abs[3]>, <-Abs[6],Abs[2],Abs[3]>, <-Abs[5],-Abs[4],-Abs[1]>, <-Abs[5],-Abs[4],Abs[1]>, <-Abs[5],Abs[4],-Abs[1]>, <-Abs[5],Abs[4],Abs[1]>, <-Abs[4],-Abs[1],-Abs[5]>, <-Abs[4],-Abs[1],Abs[5]>, <-Abs[4],Abs[1],-Abs[5]>, <-Abs[4],Abs[1],Abs[5]>, <-Abs[3],-Abs[6],-Abs[2]>, <-Abs[3],-Abs[6],Abs[2]>, <-Abs[3],Abs[6],-Abs[2]>, <-Abs[3],Abs[6],Abs[2]>, <-Abs[2],-Abs[3],-Abs[6]>, <-Abs[2],-Abs[3],Abs[6]>, <-Abs[2],Abs[3],-Abs[6]>, <-Abs[2],Abs[3],Abs[6]>, <-Abs[1],-Abs[7],Abs[0]>, <-Abs[1],-Abs[5],-Abs[4]>, <-Abs[1],-Abs[5],Abs[4]>, <-Abs[1],Abs[5],-Abs[4]>, <-Abs[1],Abs[5],Abs[4]>, <-Abs[1],Abs[7],Abs[0]>, <Abs[0],-Abs[1],-Abs[7]>, <Abs[0],-Abs[1],Abs[7]>, <Abs[0],Abs[1],-Abs[7]>, <Abs[0],Abs[1],Abs[7]>, <Abs[1],-Abs[7],Abs[0]>, <Abs[1],-Abs[5],-Abs[4]>, <Abs[1],-Abs[5],Abs[4]>, <Abs[1],Abs[5],-Abs[4]>, <Abs[1],Abs[5],Abs[4]>, <Abs[1],Abs[7],Abs[0]>, <Abs[2],-Abs[3],-Abs[6]>, <Abs[2],-Abs[3],Abs[6]>, <Abs[2],Abs[3],-Abs[6]>, <Abs[2],Abs[3],Abs[6]>, <Abs[3],-Abs[6],-Abs[2]>, <Abs[3],-Abs[6],Abs[2]>, <Abs[3],Abs[6],-Abs[2]>, <Abs[3],Abs[6],Abs[2]>, <Abs[4],-Abs[1],-Abs[5]>, <Abs[4],-Abs[1],Abs[5]>, <Abs[4],Abs[1],-Abs[5]>, <Abs[4],Abs[1],Abs[5]>, <Abs[5],-Abs[4],-Abs[1]>, <Abs[5],-Abs[4],Abs[1]>, <Abs[5],Abs[4],-Abs[1]>, <Abs[5],Abs[4],Abs[1]>, <Abs[6],-Abs[2],-Abs[3]>, <Abs[6],-Abs[2],Abs[3]>, <Abs[6],Abs[2],-Abs[3]>, <Abs[6],Abs[2],Abs[3]>, <Abs[7],Abs[0],-Abs[1]>, <Abs[7],Abs[0],Abs[1]>, }

#declare Faces = array[32]{array[6]{P[8], P[9], P[17], P[27], P[16], P[8]}, array[7]{P[19], P[11], P[13], P[21], P[31], P[29], P[19]}, array[6]{P[24], P[19], P[29], P[39], P[34], P[24]}, array[7]{P[4], P[12], P[20], P[25], P[16], P[8], P[4]}, array[7]{P[26], P[17], P[9], P[5], P[13], P[21], P[26]}, array[7]{P[23], P[14], P[22], P[32], P[42], P[33], P[23]}, array[7]{P[1], P[0], P[4], P[8], P[9], P[5], P[1]}, array[7]{P[15], P[7], P[3], P[11], P[19], P[24], P[15]}, array[7]{P[10], P[18], P[23], P[14], P[6], P[2], P[10]}, array[7]{P[30], P[28], P[18], P[10], P[12], P[20], P[30]}, array[7]{P[47], P[39], P[29], P[31], P[41], P[49], P[47]}, array[6]{P[50], P[42], P[32], P[43], P[51], P[50]}, array[6]{P[48], P[46], P[54], P[58], P[56], P[48]}, array[7]{P[39], P[47], P[55], P[51], P[43], P[34], P[39]}, array[7]{P[7], P[3], P[1], P[0], P[2], P[6], P[7]}, array[7]{P[48], P[40], P[30], P[28], P[38], P[46], P[48]}, array[7]{P[16], P[27], P[37], P[44], P[35], P[25], P[16]}, array[6]{P[20], P[25], P[35], P[40], P[30], P[20]}, array[7]{P[53], P[45], P[36], P[41], P[49], P[57], P[53]}, array[6]{P[45], P[37], P[44], P[52], P[53], P[45]}, array[7]{P[44], P[35], P[40], P[48], P[56], P[52], P[44]}, array[7]{P[57], P[59], P[58], P[56], P[52], P[53], P[57]}, array[6]{P[6], P[7], P[15], P[22], P[14], P[6]}, array[7]{P[55], P[59], P[58], P[54], P[50], P[51], P[55]}, array[6]{P[28], P[18], P[23], P[33], P[38], P[28]}, array[7]{P[42], P[33], P[38], P[46], P[54], P[50], P[42]}, array[7]{P[24], P[34], P[43], P[32], P[22], P[15], P[24]}, array[7]{P[45], P[36], P[26], P[17], P[27], P[37], P[45]}, array[6]{P[26], P[21], P[31], P[41], P[36], P[26]}, array[6]{P[4], P[0], P[2], P[10], P[12], P[4]}, array[6]{P[5], P[13], P[11], P[3], P[1], P[5]}, array[6]{P[59], P[57], P[49], P[47], P[55], P[59]}};

#declare Edges = array[90]{array[2]{16, 27}, array[2]{35, 44}, array[2]{11, 19}, array[2]{32, 43}, array[2]{11, 13}, array[2]{52, 56}, array[2]{41, 49}, array[2]{54, 58}, array[2]{20, 30}, array[2]{45, 53}, array[2]{55, 59}, array[2]{31, 41}, array[2]{52, 53}, array[2]{43, 51}, array[2]{35, 40}, array[2]{2, 6}, array[2]{33, 42}, array[2]{50, 54}, array[2]{25, 35}, array[2]{26, 36}, array[2]{53, 57}, array[2]{21, 26}, array[2]{47, 49}, array[2]{46, 48}, array[2]{8, 9}, array[2]{48, 56}, array[2]{1, 3}, array[2]{22, 32}, array[2]{13, 21}, array[2]{58, 59}, array[2]{14, 23}, array[2]{40, 48}, array[2]{29, 31}, array[2]{56, 58}, array[2]{10, 18}, array[2]{16, 25}, array[2]{4, 12}, array[2]{23, 33}, array[2]{34, 39}, array[2]{34, 43}, array[2]{0, 2}, array[2]{8, 16}, array[2]{28, 38}, array[2]{18, 23}, array[2]{37, 44}, array[2]{50, 51}, array[2]{4, 8}, array[2]{21, 31}, array[2]{20, 25}, array[2]{38, 46}, array[2]{5, 13}, array[2]{3, 11}, array[2]{15, 24}, array[2]{37, 45}, array[2]{19, 24}, array[2]{10, 12}, array[2]{5, 9}, array[2]{3, 7}, array[2]{17, 26}, array[2]{39, 47}, array[2]{28, 30}, array[2]{24, 34}, array[2]{9, 17}, array[2]{33, 38}, array[2]{14, 22}, array[2]{17, 27}, array[2]{36, 45}, array[2]{0, 1}, array[2]{46, 54}, array[2]{6, 7}, array[2]{12, 20}, array[2]{32, 42}, array[2]{47, 55}, array[2]{44, 52}, array[2]{42, 50}, array[2]{15, 22}, array[2]{57, 59}, array[2]{6, 14}, array[2]{30, 40}, array[2]{18, 28}, array[2]{7, 15}, array[2]{0, 4}, array[2]{36, 41}, array[2]{2, 10}, array[2]{29, 39}, array[2]{19, 29}, array[2]{49, 57}, array[2]{51, 55}, array[2]{1, 5}, array[2]{27, 37}};

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

#declare Factor = ScaleFactor * 3/(3/4 + 3*sqrt(5)/4);


#declare Abs = array[6]{ (0.0)*Factor, (-3/4 + 3*sqrt(5)/4)*Factor, (9*sqrt(5)/76 + 81/76)*Factor, (1.5)*Factor, (63/76 + 45*sqrt(5)/76)*Factor, (3/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],-Abs[1],Abs[0]>, <-Abs[5],Abs[1],Abs[0]>, <-Abs[4],Abs[0],-Abs[2]>, <-Abs[4],Abs[0],Abs[2]>, <-Abs[3],-Abs[3],-Abs[3]>, <-Abs[3],-Abs[3],Abs[3]>, <-Abs[3],Abs[3],-Abs[3]>, <-Abs[3],Abs[3],Abs[3]>, <-Abs[2],-Abs[4],Abs[0]>, <-Abs[2],Abs[4],Abs[0]>, <-Abs[1],Abs[0],-Abs[5]>, <-Abs[1],Abs[0],Abs[5]>, <-Abs[0],-Abs[5],-Abs[1]>, <-Abs[0],-Abs[5],Abs[1]>, <-Abs[0],-Abs[2],-Abs[4]>, <-Abs[0],-Abs[2],Abs[4]>, <-Abs[0],Abs[2],-Abs[4]>, <-Abs[0],Abs[2],Abs[4]>, <-Abs[0],Abs[5],-Abs[1]>, <-Abs[0],Abs[5],Abs[1]>, <Abs[1],Abs[0],-Abs[5]>, <Abs[1],Abs[0],Abs[5]>, <Abs[2],-Abs[4],Abs[0]>, <Abs[2],Abs[4],Abs[0]>, <Abs[3],-Abs[3],-Abs[3]>, <Abs[3],-Abs[3],Abs[3]>, <Abs[3],Abs[3],-Abs[3]>, <Abs[3],Abs[3],Abs[3]>, <Abs[4],Abs[0],-Abs[2]>, <Abs[4],Abs[0],Abs[2]>, <Abs[5],-Abs[1],Abs[0]>, <Abs[5],Abs[1],Abs[0]>, }

#declare Faces = array[60]{array[4]{P[8], P[5], P[0], P[8]}, array[4]{P[8], P[5], P[13], P[8]}, array[4]{P[25], P[22], P[30], P[25]}, array[4]{P[25], P[22], P[13], P[25]}, array[4]{P[23], P[26], P[18], P[23]}, array[4]{P[12], P[8], P[13], P[12]}, array[4]{P[12], P[22], P[13], P[12]}, array[4]{P[4], P[8], P[0], P[4]}, array[4]{P[4], P[10], P[14], P[4]}, array[4]{P[4], P[12], P[14], P[4]}, array[4]{P[4], P[12], P[8], P[4]}, array[4]{P[3], P[5], P[11], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[5], P[0], P[3]}, array[4]{P[3], P[7], P[11], P[3]}, array[4]{P[3], P[7], P[1], P[3]}, array[4]{P[24], P[28], P[30], P[24]}, array[4]{P[24], P[22], P[30], P[24]}, array[4]{P[24], P[12], P[14], P[24]}, array[4]{P[24], P[12], P[22], P[24]}, array[4]{P[20], P[10], P[14], P[20]}, array[4]{P[20], P[28], P[26], P[20]}, array[4]{P[20], P[24], P[14], P[20]}, array[4]{P[20], P[24], P[28], P[20]}, array[4]{P[9], P[7], P[1], P[9]}, array[4]{P[9], P[6], P[18], P[9]}, array[4]{P[9], P[6], P[1], P[9]}, array[4]{P[31], P[28], P[26], P[31]}, array[4]{P[31], P[23], P[26], P[31]}, array[4]{P[31], P[28], P[30], P[31]}, array[4]{P[31], P[23], P[27], P[31]}, array[4]{P[2], P[1], P[0], P[2]}, array[4]{P[2], P[6], P[1], P[2]}, array[4]{P[2], P[6], P[10], P[2]}, array[4]{P[2], P[4], P[0], P[2]}, array[4]{P[2], P[4], P[10], P[2]}, array[4]{P[15], P[5], P[11], P[15]}, array[4]{P[15], P[5], P[13], P[15]}, array[4]{P[15], P[25], P[13], P[15]}, array[4]{P[15], P[21], P[11], P[15]}, array[4]{P[15], P[21], P[25], P[15]}, array[4]{P[16], P[6], P[10], P[16]}, array[4]{P[16], P[6], P[18], P[16]}, array[4]{P[16], P[26], P[18], P[16]}, array[4]{P[16], P[20], P[26], P[16]}, array[4]{P[16], P[20], P[10], P[16]}, array[4]{P[19], P[23], P[27], P[19]}, array[4]{P[19], P[9], P[7], P[19]}, array[4]{P[19], P[23], P[18], P[19]}, array[4]{P[19], P[9], P[18], P[19]}, array[4]{P[29], P[21], P[25], P[29]}, array[4]{P[29], P[21], P[27], P[29]}, array[4]{P[29], P[25], P[30], P[29]}, array[4]{P[29], P[31], P[30], P[29]}, array[4]{P[29], P[31], P[27], P[29]}, array[4]{P[17], P[7], P[11], P[17]}, array[4]{P[17], P[21], P[11], P[17]}, array[4]{P[17], P[21], P[27], P[17]}, array[4]{P[17], P[19], P[27], P[17]}, array[4]{P[17], P[19], P[7], P[17]}};

#declare Edges = array[90]{array[2]{7, 9}, array[2]{19, 27}, array[2]{0, 5}, array[2]{8, 13}, array[2]{28, 31}, array[2]{22, 30}, array[2]{18, 26}, array[2]{12, 13}, array[2]{24, 30}, array[2]{11, 21}, array[2]{27, 29}, array[2]{16, 20}, array[2]{3, 5}, array[2]{6, 18}, array[2]{27, 31}, array[2]{17, 19}, array[2]{2, 6}, array[2]{16, 18}, array[2]{2, 4}, array[2]{6, 9}, array[2]{6, 16}, array[2]{21, 27}, array[2]{1, 3}, array[2]{0, 3}, array[2]{29, 31}, array[2]{25, 30}, array[2]{5, 8}, array[2]{8, 12}, array[2]{9, 18}, array[2]{22, 24}, array[2]{22, 25}, array[2]{4, 12}, array[2]{5, 11}, array[2]{13, 15}, array[2]{7, 11}, array[2]{0, 2}, array[2]{1, 6}, array[2]{26, 31}, array[2]{12, 24}, array[2]{18, 19}, array[2]{18, 23}, array[2]{1, 9}, array[2]{4, 8}, array[2]{26, 28}, array[2]{5, 13}, array[2]{25, 29}, array[2]{3, 11}, array[2]{20, 24}, array[2]{20, 26}, array[2]{0, 8}, array[2]{1, 2}, array[2]{6, 10}, array[2]{15, 21}, array[2]{10, 14}, array[2]{23, 27}, array[2]{24, 28}, array[2]{16, 26}, array[2]{3, 7}, array[2]{30, 31}, array[2]{28, 30}, array[2]{20, 28}, array[2]{19, 23}, array[2]{14, 24}, array[2]{23, 31}, array[2]{7, 17}, array[2]{4, 14}, array[2]{21, 25}, array[2]{13, 22}, array[2]{1, 7}, array[2]{10, 20}, array[2]{29, 30}, array[2]{17, 27}, array[2]{11, 17}, array[2]{0, 1}, array[2]{23, 26}, array[2]{12, 22}, array[2]{5, 15}, array[2]{15, 25}, array[2]{12, 14}, array[2]{10, 16}, array[2]{13, 25}, array[2]{14, 20}, array[2]{9, 19}, array[2]{0, 4}, array[2]{21, 29}, array[2]{2, 10}, array[2]{7, 19}, array[2]{4, 10}, array[2]{17, 21}, array[2]{11, 15}};

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
