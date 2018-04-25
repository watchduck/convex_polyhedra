#include "polyhedra_colors.inc"



#declare Factor = {{!factor}};
#declare Abs = array[7]{ (0)*Factor, (0.32491969623290634)*Factor, (0.5257311121191336)*Factor, (0.5411669008711212)*Factor, (0.8506508083520399)*Factor, (0.8756264391959192)*Factor, (1.0514622242382672)*Factor, }
#declare P = array[42]{ <-Abs[6],Abs[0],Abs[0]>, <-Abs[5],Abs[0],-Abs[3]>, <-Abs[5],Abs[0],Abs[3]>, <-Abs[4],-Abs[2],-Abs[1]>, <-Abs[4],-Abs[2],Abs[1]>, <-Abs[4],Abs[2],-Abs[1]>, <-Abs[4],Abs[2],Abs[1]>, <-Abs[3],-Abs[5],Abs[0]>, <-Abs[3],Abs[5],Abs[0]>, <-Abs[2],-Abs[1],-Abs[4]>, <-Abs[2],-Abs[1],Abs[4]>, <-Abs[2],Abs[1],-Abs[4]>, <-Abs[2],Abs[1],Abs[4]>, <-Abs[1],-Abs[4],-Abs[2]>, <-Abs[1],-Abs[4],Abs[2]>, <-Abs[1],Abs[4],-Abs[2]>, <-Abs[1],Abs[4],Abs[2]>, <Abs[0],-Abs[6],Abs[0]>, <Abs[0],-Abs[3],-Abs[5]>, <Abs[0],-Abs[3],Abs[5]>, <Abs[0],Abs[0],-Abs[6]>, <Abs[0],Abs[0],Abs[6]>, <Abs[0],Abs[3],-Abs[5]>, <Abs[0],Abs[3],Abs[5]>, <Abs[0],Abs[6],Abs[0]>, <Abs[1],-Abs[4],-Abs[2]>, <Abs[1],-Abs[4],Abs[2]>, <Abs[1],Abs[4],-Abs[2]>, <Abs[1],Abs[4],Abs[2]>, <Abs[2],-Abs[1],-Abs[4]>, <Abs[2],-Abs[1],Abs[4]>, <Abs[2],Abs[1],-Abs[4]>, <Abs[2],Abs[1],Abs[4]>, <Abs[3],-Abs[5],Abs[0]>, <Abs[3],Abs[5],Abs[0]>, <Abs[4],-Abs[2],-Abs[1]>, <Abs[4],-Abs[2],Abs[1]>, <Abs[4],Abs[2],-Abs[1]>, <Abs[4],Abs[2],Abs[1]>, <Abs[5],Abs[0],-Abs[3]>, <Abs[5],Abs[0],Abs[3]>, <Abs[6],Abs[0],Abs[0]>, }

#declare RedVertices = array[12]{1, 2, 7, 8, 18, 19, 22, 23, 33, 34, 39, 40};

#declare BlueVertices = array[30]{0, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 41};

#declare UncoloredEdges = array[120]{array[2]{33, 36}, array[2]{3, 9}, array[2]{21, 30}, array[2]{7, 13}, array[2]{17, 26}, array[2]{37, 39}, array[2]{17, 33}, array[2]{14, 17}, array[2]{11, 15}, array[2]{28, 34}, array[2]{3, 4}, array[2]{1, 3}, array[2]{21, 32}, array[2]{14, 26}, array[2]{0, 4}, array[2]{19, 21}, array[2]{5, 6}, array[2]{20, 31}, array[2]{19, 26}, array[2]{0, 3}, array[2]{13, 18}, array[2]{15, 24}, array[2]{30, 32}, array[2]{15, 22}, array[2]{6, 12}, array[2]{35, 39}, array[2]{28, 32}, array[2]{22, 27}, array[2]{33, 35}, array[2]{28, 38}, array[2]{1, 9}, array[2]{9, 18}, array[2]{30, 40}, array[2]{31, 39}, array[2]{40, 41}, array[2]{9, 11}, array[2]{29, 35}, array[2]{18, 29}, array[2]{34, 38}, array[2]{2, 6}, array[2]{21, 23}, array[2]{4, 7}, array[2]{23, 28}, array[2]{36, 41}, array[2]{3, 7}, array[2]{25, 35}, array[2]{31, 37}, array[2]{9, 13}, array[2]{7, 14}, array[2]{23, 32}, array[2]{26, 30}, array[2]{1, 11}, array[2]{16, 28}, array[2]{10, 12}, array[2]{24, 28}, array[2]{8, 15}, array[2]{26, 33}, array[2]{11, 22}, array[2]{10, 19}, array[2]{30, 36}, array[2]{11, 20}, array[2]{32, 38}, array[2]{2, 10}, array[2]{17, 25}, array[2]{13, 17}, array[2]{35, 36}, array[2]{24, 34}, array[2]{14, 19}, array[2]{12, 21}, array[2]{2, 12}, array[2]{25, 29}, array[2]{5, 8}, array[2]{19, 30}, array[2]{10, 21}, array[2]{38, 41}, array[2]{16, 23}, array[2]{2, 4}, array[2]{37, 38}, array[2]{1, 5}, array[2]{0, 5}, array[2]{8, 24}, array[2]{15, 27}, array[2]{12, 16}, array[2]{27, 37}, array[2]{4, 10}, array[2]{35, 41}, array[2]{12, 23}, array[2]{20, 22}, array[2]{0, 6}, array[2]{13, 25}, array[2]{6, 8}, array[2]{8, 16}, array[2]{4, 14}, array[2]{18, 25}, array[2]{22, 31}, array[2]{34, 37}, array[2]{7, 17}, array[2]{27, 31}, array[2]{0, 2}, array[2]{39, 41}, array[2]{37, 41}, array[2]{32, 40}, array[2]{29, 31}, array[2]{3, 13}, array[2]{5, 15}, array[2]{9, 20}, array[2]{24, 27}, array[2]{0, 1}, array[2]{10, 14}, array[2]{36, 40}, array[2]{25, 33}, array[2]{6, 16}, array[2]{27, 34}, array[2]{5, 11}, array[2]{26, 36}, array[2]{18, 20}, array[2]{29, 39}, array[2]{38, 40}, array[2]{20, 29}, array[2]{16, 24}};

#declare YellowFaces = array[20]{array[4]{16, 28, 24, 16}, array[4]{5, 6, 0, 5}, array[4]{12, 16, 6, 12}, array[4]{38, 32, 28, 38}, array[4]{37, 38, 41, 37}, array[4]{37, 31, 27, 37}, array[4]{15, 27, 24, 15}, array[4]{4, 3, 0, 4}, array[4]{35, 36, 41, 35}, array[4]{10, 12, 21, 10}, array[4]{30, 32, 21, 30}, array[4]{30, 36, 26, 30}, array[4]{11, 15, 5, 11}, array[4]{11, 9, 20, 11}, array[4]{13, 25, 17, 13}, array[4]{13, 9, 3, 13}, array[4]{14, 26, 17, 14}, array[4]{14, 10, 4, 14}, array[4]{29, 35, 25, 29}, array[4]{29, 31, 20, 29}};

#declare UncoloredFaces = array[60]{array[4]{2, 6, 0, 2}, array[4]{34, 27, 24, 34}, array[4]{34, 28, 24, 34}, array[4]{12, 2, 6, 12}, array[4]{38, 34, 28, 38}, array[4]{37, 38, 34, 37}, array[4]{37, 34, 27, 37}, array[4]{1, 5, 0, 1}, array[4]{1, 3, 0, 1}, array[4]{4, 2, 0, 4}, array[4]{23, 32, 21, 23}, array[4]{23, 32, 28, 23}, array[4]{23, 16, 28, 23}, array[4]{23, 12, 21, 23}, array[4]{23, 12, 16, 23}, array[4]{9, 1, 3, 9}, array[4]{8, 16, 6, 8}, array[4]{8, 16, 24, 8}, array[4]{8, 5, 6, 8}, array[4]{8, 15, 24, 8}, array[4]{8, 15, 5, 8}, array[4]{22, 31, 27, 22}, array[4]{22, 31, 20, 22}, array[4]{22, 15, 27, 22}, array[4]{7, 4, 3, 7}, array[4]{10, 4, 2, 10}, array[4]{10, 12, 2, 10}, array[4]{39, 37, 31, 39}, array[4]{39, 37, 41, 39}, array[4]{39, 35, 41, 39}, array[4]{33, 36, 26, 33}, array[4]{33, 26, 17, 33}, array[4]{33, 25, 17, 33}, array[4]{33, 35, 25, 33}, array[4]{33, 35, 36, 33}, array[4]{11, 1, 5, 11}, array[4]{11, 22, 15, 11}, array[4]{11, 9, 1, 11}, array[4]{11, 22, 20, 11}, array[4]{13, 7, 17, 13}, array[4]{13, 7, 3, 13}, array[4]{14, 7, 17, 14}, array[4]{14, 7, 4, 14}, array[4]{40, 38, 32, 40}, array[4]{40, 38, 41, 40}, array[4]{40, 36, 41, 40}, array[4]{40, 30, 32, 40}, array[4]{40, 30, 36, 40}, array[4]{18, 9, 20, 18}, array[4]{18, 13, 25, 18}, array[4]{18, 13, 9, 18}, array[4]{19, 30, 26, 19}, array[4]{19, 10, 21, 19}, array[4]{19, 30, 21, 19}, array[4]{19, 14, 26, 19}, array[4]{19, 14, 10, 19}, array[4]{29, 39, 35, 29}, array[4]{29, 18, 25, 29}, array[4]{29, 39, 31, 29}, array[4]{29, 18, 20, 29}};





    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }
    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[BlueVertices[Index]], RadVert }
        #end
        texture{ TBlue }
    }

    union{
        #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
            #local EdgeArray = UncoloredEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TGray }
    }

    union{
        #for( Index, 0, dimension_size(UncoloredFaces, 1) - 1 )
            #local FaceArray = UncoloredFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TBrown }
    }
    union{
        #for( Index, 0, dimension_size(YellowFaces, 1) - 1 )
            #local FaceArray = YellowFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TYellow }
    }
