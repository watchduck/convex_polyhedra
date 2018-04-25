#include "polyhedra_colors.inc"




#declare Factor = 3/(5/8 + 3*sqrt(5)/8);


#declare Abs = array[4]{ (0.0)*Factor, (sqrt(5)/4)*Factor, (sqrt(5)/8 + 5/8)*Factor, (5/8 + 3*sqrt(5)/8)*Factor, }

#declare P = array[32]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[0],-Abs[2]>, <-Abs[3],Abs[0],Abs[2]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[3],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],Abs[0]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <-Abs[0],-Abs[3],-Abs[1]>, <-Abs[0],-Abs[3],Abs[1]>, <-Abs[0],-Abs[2],-Abs[3]>, <-Abs[0],-Abs[2],Abs[3]>, <-Abs[0],Abs[2],-Abs[3]>, <-Abs[0],Abs[2],Abs[3]>, <-Abs[0],Abs[3],-Abs[1]>, <-Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[3],Abs[0]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[0],-Abs[2]>, <Abs[3],Abs[0],Abs[2]>, <Abs[3],Abs[1],Abs[0]>, }

#declare RedVertices = array[12]{1, 2, 4, 9, 14, 15, 16, 17, 22, 27, 29, 30};

#declare YellowVertices = array[20]{0, 3, 5, 6, 7, 8, 10, 11, 12, 13, 18, 19, 20, 21, 23, 24, 25, 26, 28, 31};

#declare UncoloredEdges = array[60]{array[2]{14, 20}, array[2]{17, 21}, array[2]{22, 24}, array[2]{30, 31}, array[2]{11, 17}, array[2]{14, 23}, array[2]{24, 30}, array[2]{28, 30}, array[2]{23, 29}, array[2]{19, 27}, array[2]{12, 14}, array[2]{0, 1}, array[2]{15, 24}, array[2]{4, 5}, array[2]{8, 9}, array[2]{16, 25}, array[2]{22, 28}, array[2]{2, 8}, array[2]{17, 19}, array[2]{9, 18}, array[2]{26, 30}, array[2]{4, 12}, array[2]{25, 29}, array[2]{22, 23}, array[2]{6, 15}, array[2]{12, 22}, array[2]{16, 18}, array[2]{28, 29}, array[2]{7, 16}, array[2]{5, 14}, array[2]{2, 6}, array[2]{1, 7}, array[2]{4, 6}, array[2]{4, 13}, array[2]{2, 11}, array[2]{13, 15}, array[2]{13, 22}, array[2]{25, 27}, array[2]{29, 31}, array[2]{2, 3}, array[2]{10, 16}, array[2]{15, 21}, array[2]{17, 26}, array[2]{1, 5}, array[2]{1, 10}, array[2]{0, 4}, array[2]{3, 9}, array[2]{8, 17}, array[2]{10, 14}, array[2]{21, 30}, array[2]{27, 31}, array[2]{18, 27}, array[2]{20, 29}, array[2]{9, 19}, array[2]{26, 27}, array[2]{16, 20}, array[2]{11, 15}, array[2]{0, 2}, array[2]{1, 3}, array[2]{7, 9}};

#declare BlueFaces = array[30]{array[5]{1, 0, 4, 5, 1}, array[5]{29, 25, 16, 20, 29}, array[5]{24, 22, 28, 30, 24}, array[5]{23, 29, 20, 14, 23}, array[5]{17, 26, 27, 19, 17}, array[5]{9, 18, 27, 19, 9}, array[5]{3, 1, 0, 2, 3}, array[5]{9, 3, 1, 7, 9}, array[5]{16, 18, 27, 25, 16}, array[5]{12, 14, 23, 22, 12}, array[5]{2, 11, 17, 8, 2}, array[5]{1, 7, 16, 10, 1}, array[5]{26, 27, 31, 30, 26}, array[5]{26, 30, 21, 17, 26}, array[5]{16, 20, 14, 10, 16}, array[5]{21, 15, 24, 30, 21}, array[5]{22, 28, 29, 23, 22}, array[5]{11, 17, 21, 15, 11}, array[5]{12, 14, 5, 4, 12}, array[5]{6, 2, 11, 15, 6}, array[5]{31, 29, 28, 30, 31}, array[5]{1, 10, 14, 5, 1}, array[5]{29, 25, 27, 31, 29}, array[5]{17, 8, 9, 19, 17}, array[5]{2, 8, 9, 3, 2}, array[5]{15, 13, 22, 24, 15}, array[5]{9, 7, 16, 18, 9}, array[5]{4, 13, 15, 6, 4}, array[5]{4, 12, 22, 13, 4}, array[5]{6, 4, 0, 2, 6}};




    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }
    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }

    union{
        #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
            #local EdgeArray = UncoloredEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TGray }
    }

    union{
        #for( Index, 0, dimension_size(BlueFaces, 1) - 1 )
            #local FaceArray = BlueFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TBlue }
    }
