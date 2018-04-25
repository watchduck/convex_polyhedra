#include "polyhedra_colors.inc"



#declare Factor = 3.0;
#declare Abs = array[8]{ (0)*Factor, (0.32491969623290634)*Factor, (0.578093235168946/(1/2 + sqrt(5)/2))*Factor, (0.5257311121191336)*Factor, (0.578093235168946)*Factor, (0.8506508083520399)*Factor, (0.289046617584473 + 0.289046617584473*sqrt(5))*Factor, (1.0514622242382672)*Factor, }

#declare P = array[50]{ <-Abs[7],Abs[0],Abs[0]>, <-Abs[6],-Abs[2],Abs[0]>, <-Abs[6],Abs[2],Abs[0]>, <-Abs[5],-Abs[3],-Abs[1]>, <-Abs[5],-Abs[3],Abs[1]>, <-Abs[5],Abs[3],-Abs[1]>, <-Abs[5],Abs[3],Abs[1]>, <-Abs[4],-Abs[4],-Abs[4]>, <-Abs[4],-Abs[4],Abs[4]>, <-Abs[4],Abs[4],-Abs[4]>, <-Abs[4],Abs[4],Abs[4]>, <-Abs[3],-Abs[1],-Abs[5]>, <-Abs[3],-Abs[1],Abs[5]>, <-Abs[3],Abs[1],-Abs[5]>, <-Abs[3],Abs[1],Abs[5]>, <-Abs[2],Abs[0],-Abs[6]>, <-Abs[2],Abs[0],Abs[6]>, <-Abs[1],-Abs[5],-Abs[3]>, <-Abs[1],-Abs[5],Abs[3]>, <-Abs[1],Abs[5],-Abs[3]>, <-Abs[1],Abs[5],Abs[3]>, <Abs[0],-Abs[7],Abs[0]>, <Abs[0],-Abs[6],-Abs[2]>, <Abs[0],-Abs[6],Abs[2]>, <Abs[0],Abs[0],-Abs[7]>, <Abs[0],Abs[0],Abs[7]>, <Abs[0],Abs[6],-Abs[2]>, <Abs[0],Abs[6],Abs[2]>, <Abs[0],Abs[7],Abs[0]>, <Abs[1],-Abs[5],-Abs[3]>, <Abs[1],-Abs[5],Abs[3]>, <Abs[1],Abs[5],-Abs[3]>, <Abs[1],Abs[5],Abs[3]>, <Abs[2],Abs[0],-Abs[6]>, <Abs[2],Abs[0],Abs[6]>, <Abs[3],-Abs[1],-Abs[5]>, <Abs[3],-Abs[1],Abs[5]>, <Abs[3],Abs[1],-Abs[5]>, <Abs[3],Abs[1],Abs[5]>, <Abs[4],-Abs[4],-Abs[4]>, <Abs[4],-Abs[4],Abs[4]>, <Abs[4],Abs[4],-Abs[4]>, <Abs[4],Abs[4],Abs[4]>, <Abs[5],-Abs[3],-Abs[1]>, <Abs[5],-Abs[3],Abs[1]>, <Abs[5],Abs[3],-Abs[1]>, <Abs[5],Abs[3],Abs[1]>, <Abs[6],-Abs[2],Abs[0]>, <Abs[6],Abs[2],Abs[0]>, <Abs[7],Abs[0],Abs[0]>, }


#declare YellowVertices = array[20]{1, 2, 7, 8, 9, 10, 15, 16, 22, 23, 26, 27, 33, 34, 39, 40, 41, 42, 47, 48};

#declare BlueVertices = array[30]{0, 3, 4, 5, 6, 11, 12, 13, 14, 17, 18, 19, 20, 21, 24, 25, 28, 29, 30, 31, 32, 35, 36, 37, 38, 43, 44, 45, 46, 49};

#declare UncoloredEdges = array[120]{array[2]{13, 24}, array[2]{30, 36}, array[2]{35, 37}, array[2]{43, 44}, array[2]{0, 4}, array[2]{46, 49}, array[2]{1, 4}, array[2]{43, 47}, array[2]{35, 43}, array[2]{3, 17}, array[2]{6, 14}, array[2]{17, 21}, array[2]{4, 18}, array[2]{25, 36}, array[2]{12, 18}, array[2]{0, 5}, array[2]{19, 28}, array[2]{4, 12}, array[2]{11, 15}, array[2]{36, 44}, array[2]{38, 46}, array[2]{6, 20}, array[2]{23, 30}, array[2]{14, 16}, array[2]{31, 37}, array[2]{33, 35}, array[2]{2, 6}, array[2]{28, 32}, array[2]{21, 30}, array[2]{18, 21}, array[2]{26, 31}, array[2]{28, 31}, array[2]{32, 38}, array[2]{18, 23}, array[2]{27, 32}, array[2]{11, 17}, array[2]{20, 28}, array[2]{22, 29}, array[2]{30, 44}, array[2]{11, 24}, array[2]{2, 5}, array[2]{5, 13}, array[2]{5, 6}, array[2]{33, 37}, array[2]{14, 25}, array[2]{24, 35}, array[2]{13, 15}, array[2]{5, 19}, array[2]{25, 38}, array[2]{43, 49}, array[2]{12, 16}, array[2]{34, 38}, array[2]{1, 3}, array[2]{37, 45}, array[2]{21, 29}, array[2]{0, 6}, array[2]{45, 48}, array[2]{3, 4}, array[2]{20, 32}, array[2]{12, 25}, array[2]{19, 26}, array[2]{34, 36}, array[2]{45, 49}, array[2]{13, 19}, array[2]{29, 35}, array[2]{44, 47}, array[2]{19, 31}, array[2]{3, 11}, array[2]{17, 22}, array[2]{46, 48}, array[2]{20, 27}, array[2]{0, 3}, array[2]{32, 46}, array[2]{24, 37}, array[2]{11, 13}, array[2]{14, 20}, array[2]{12, 14}, array[2]{44, 49}, array[2]{18, 30}, array[2]{31, 45}, array[2]{45, 46}, array[2]{17, 29}, array[2]{36, 38}, array[2]{29, 43}, array[2]{41, 45}, array[2]{30, 40}, array[2]{26, 28}, array[2]{9, 13}, array[2]{29, 39}, array[2]{21, 23}, array[2]{21, 22}, array[2]{35, 39}, array[2]{7, 11}, array[2]{32, 42}, array[2]{3, 7}, array[2]{9, 19}, array[2]{24, 33}, array[2]{4, 8}, array[2]{5, 9}, array[2]{8, 18}, array[2]{10, 20}, array[2]{15, 24}, array[2]{0, 1}, array[2]{27, 28}, array[2]{36, 40}, array[2]{10, 14}, array[2]{7, 17}, array[2]{40, 44}, array[2]{25, 34}, array[2]{8, 12}, array[2]{31, 41}, array[2]{39, 43}, array[2]{16, 25}, array[2]{0, 2}, array[2]{48, 49}, array[2]{42, 46}, array[2]{38, 42}, array[2]{6, 10}, array[2]{37, 41}, array[2]{47, 49}};

#declare RedFaces = array[32]{array[4]{32, 38, 25, 32}, array[4]{32, 14, 25, 32}, array[4]{32, 20, 14, 32}, array[4]{12, 6, 14, 12}, array[4]{12, 6, 0, 12}, array[4]{12, 4, 0, 12}, array[4]{36, 46, 38, 36}, array[4]{36, 46, 49, 36}, array[4]{36, 44, 49, 36}, array[4]{11, 5, 13, 11}, array[4]{11, 5, 0, 11}, array[4]{11, 3, 0, 11}, array[4]{19, 20, 28, 19}, array[4]{35, 45, 37, 35}, array[4]{35, 45, 49, 35}, array[4]{35, 43, 49, 35}, array[4]{17, 18, 21, 17}, array[4]{31, 32, 28, 31}, array[4]{31, 37, 24, 31}, array[4]{31, 13, 24, 31}, array[4]{31, 19, 13, 31}, array[4]{30, 36, 25, 30}, array[4]{30, 12, 25, 30}, array[4]{30, 18, 12, 30}, array[4]{29, 30, 21, 29}, array[4]{29, 35, 24, 29}, array[4]{29, 11, 24, 29}, array[4]{29, 17, 11, 29}, array[5]{19, 5, 6, 20, 19}, array[5]{30, 29, 43, 44, 30}, array[5]{32, 46, 45, 31, 32}, array[5]{17, 3, 4, 18, 17}};

#declare UncoloredFaces = array[60]{array[4]{20, 27, 28, 20}, array[4]{20, 14, 10, 20}, array[4]{6, 14, 10, 6}, array[4]{6, 2, 0, 6}, array[4]{5, 2, 0, 5}, array[4]{5, 13, 9, 5}, array[4]{5, 6, 2, 5}, array[4]{32, 27, 28, 32}, array[4]{32, 38, 42, 32}, array[4]{32, 20, 27, 32}, array[4]{46, 38, 42, 46}, array[4]{46, 48, 49, 46}, array[4]{45, 37, 41, 45}, array[4]{45, 48, 49, 45}, array[4]{45, 46, 48, 45}, array[4]{12, 4, 8, 12}, array[4]{36, 44, 40, 36}, array[4]{18, 12, 8, 18}, array[4]{11, 3, 7, 11}, array[4]{19, 26, 28, 19}, array[4]{19, 13, 9, 19}, array[4]{35, 43, 39, 35}, array[4]{17, 11, 7, 17}, array[4]{31, 26, 28, 31}, array[4]{31, 37, 41, 31}, array[4]{31, 19, 26, 31}, array[4]{16, 14, 25, 16}, array[4]{16, 12, 14, 16}, array[4]{16, 12, 25, 16}, array[4]{34, 38, 25, 34}, array[4]{34, 36, 38, 34}, array[4]{34, 36, 25, 34}, array[4]{30, 36, 40, 30}, array[4]{1, 4, 0, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 3, 4, 1}, array[4]{15, 11, 13, 15}, array[4]{15, 13, 24, 15}, array[4]{15, 11, 24, 15}, array[4]{47, 44, 49, 47}, array[4]{47, 43, 49, 47}, array[4]{47, 43, 44, 47}, array[4]{33, 37, 24, 33}, array[4]{33, 35, 37, 33}, array[4]{33, 35, 24, 33}, array[4]{29, 35, 39, 29}, array[4]{23, 18, 21, 23}, array[4]{23, 30, 21, 23}, array[4]{23, 30, 18, 23}, array[4]{22, 17, 21, 22}, array[4]{22, 29, 21, 22}, array[4]{22, 29, 17, 22}, array[4]{6, 20, 10, 6}, array[4]{46, 32, 42, 46}, array[4]{18, 4, 8, 18}, array[4]{19, 5, 9, 19}, array[4]{17, 3, 7, 17}, array[4]{31, 45, 41, 31}, array[4]{30, 44, 40, 30}, array[4]{29, 43, 39, 29}};




union{


    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
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
        #for( Index, 0, dimension_size(RedFaces, 1) - 1 )
            #local FaceArray = RedFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TRed }
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

    rotate Rotate
}
