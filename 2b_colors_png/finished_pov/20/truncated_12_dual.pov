#include "polyhedra_colors.inc"




#declare Factor = 3/(5/4 + 3*sqrt(5)/4);


#declare Abs = array[6]{ (0.0)*Factor, (5*sqrt(5)/44 + 35/44)*Factor, (15/22 + 5*sqrt(5)/11)*Factor, (sqrt(5)/4 + 5/4)*Factor, (25*sqrt(5)/44 + 65/44)*Factor, (5/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],Abs[0],-Abs[3]>, <-Abs[5],Abs[0],Abs[3]>, <-Abs[4],-Abs[1],Abs[0]>, <-Abs[4],Abs[1],Abs[0]>, <-Abs[3],-Abs[5],Abs[0]>, <-Abs[3],Abs[5],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[4]>, <-Abs[1],Abs[0],Abs[4]>, <-Abs[0],-Abs[4],-Abs[1]>, <-Abs[0],-Abs[4],Abs[1]>, <-Abs[0],-Abs[3],-Abs[5]>, <-Abs[0],-Abs[3],Abs[5]>, <-Abs[0],Abs[3],-Abs[5]>, <-Abs[0],Abs[3],Abs[5]>, <-Abs[0],Abs[4],-Abs[1]>, <-Abs[0],Abs[4],Abs[1]>, <Abs[1],Abs[0],-Abs[4]>, <Abs[1],Abs[0],Abs[4]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[5],Abs[0]>, <Abs[3],Abs[5],Abs[0]>, <Abs[4],-Abs[1],Abs[0]>, <Abs[4],Abs[1],Abs[0]>, <Abs[5],Abs[0],-Abs[3]>, <Abs[5],Abs[0],Abs[3]>, }

#declare RedVertices = array[12]{0, 1, 4, 5, 14, 15, 16, 17, 26, 27, 30, 31};

#declare YellowVertices = array[20]{2, 3, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19, 20, 21, 22, 23, 24, 25, 28, 29};

#declare BlueEdges = array[30]{array[2]{17, 27}, array[2]{1, 17}, array[2]{4, 14}, array[2]{14, 16}, array[2]{26, 30}, array[2]{16, 27}, array[2]{26, 31}, array[2]{17, 31}, array[2]{4, 15}, array[2]{27, 30}, array[2]{15, 26}, array[2]{30, 31}, array[2]{0, 14}, array[2]{5, 27}, array[2]{0, 16}, array[2]{1, 5}, array[2]{5, 17}, array[2]{27, 31}, array[2]{1, 15}, array[2]{0, 4}, array[2]{15, 31}, array[2]{4, 26}, array[2]{5, 16}, array[2]{16, 30}, array[2]{1, 4}, array[2]{0, 5}, array[2]{15, 17}, array[2]{14, 30}, array[2]{0, 1}, array[2]{14, 26}};

#declare UncoloredEdges = array[60]{array[2]{0, 8}, array[2]{0, 6}, array[2]{10, 14}, array[2]{28, 30}, array[2]{1, 9}, array[2]{28, 31}, array[2]{10, 16}, array[2]{18, 27}, array[2]{13, 15}, array[2]{23, 31}, array[2]{26, 28}, array[2]{3, 5}, array[2]{14, 20}, array[2]{12, 14}, array[2]{11, 17}, array[2]{9, 17}, array[2]{27, 29}, array[2]{12, 26}, array[2]{25, 27}, array[2]{29, 30}, array[2]{1, 11}, array[2]{19, 27}, array[2]{15, 21}, array[2]{7, 15}, array[2]{5, 8}, array[2]{4, 6}, array[2]{17, 19}, array[2]{29, 31}, array[2]{22, 26}, array[2]{13, 26}, array[2]{6, 14}, array[2]{23, 26}, array[2]{21, 31}, array[2]{2, 4}, array[2]{5, 19}, array[2]{5, 9}, array[2]{22, 30}, array[2]{4, 13}, array[2]{17, 25}, array[2]{14, 22}, array[2]{25, 31}, array[2]{0, 10}, array[2]{15, 23}, array[2]{0, 3}, array[2]{16, 24}, array[2]{5, 18}, array[2]{1, 3}, array[2]{16, 18}, array[2]{4, 12}, array[2]{24, 27}, array[2]{1, 2}, array[2]{20, 30}, array[2]{16, 20}, array[2]{4, 7}, array[2]{17, 21}, array[2]{1, 7}, array[2]{8, 16}, array[2]{0, 2}, array[2]{11, 15}, array[2]{24, 30}};

#declare UncoloredFaces = array[60]{array[4]{8, 5, 0, 8}, array[4]{8, 16, 0, 8}, array[4]{8, 16, 5, 8}, array[4]{3, 5, 0, 3}, array[4]{3, 1, 0, 3}, array[4]{3, 1, 5, 3}, array[4]{17, 27, 25, 17}, array[4]{22, 26, 30, 22}, array[4]{13, 26, 15, 13}, array[4]{29, 27, 30, 29}, array[4]{24, 16, 30, 24}, array[4]{24, 27, 30, 24}, array[4]{24, 27, 16, 24}, array[4]{18, 16, 5, 18}, array[4]{18, 27, 5, 18}, array[4]{18, 27, 16, 18}, array[4]{11, 1, 15, 11}, array[4]{11, 17, 15, 11}, array[4]{11, 17, 1, 11}, array[4]{9, 1, 5, 9}, array[4]{9, 17, 5, 9}, array[4]{9, 17, 1, 9}, array[4]{19, 27, 5, 19}, array[4]{19, 17, 5, 19}, array[4]{19, 17, 27, 19}, array[4]{14, 6, 0, 14}, array[4]{14, 22, 30, 14}, array[4]{14, 26, 12, 14}, array[4]{14, 22, 26, 14}, array[4]{4, 6, 0, 4}, array[4]{4, 13, 15, 4}, array[4]{4, 14, 12, 4}, array[4]{4, 14, 6, 4}, array[4]{4, 26, 12, 4}, array[4]{4, 13, 26, 4}, array[4]{31, 17, 25, 31}, array[4]{31, 27, 25, 31}, array[4]{31, 29, 27, 31}, array[4]{31, 29, 30, 31}, array[4]{10, 16, 0, 10}, array[4]{10, 14, 0, 10}, array[4]{10, 14, 16, 10}, array[4]{20, 16, 30, 20}, array[4]{20, 14, 30, 20}, array[4]{20, 14, 16, 20}, array[4]{2, 1, 0, 2}, array[4]{2, 4, 0, 2}, array[4]{2, 4, 1, 2}, array[4]{7, 1, 15, 7}, array[4]{7, 4, 15, 7}, array[4]{7, 4, 1, 7}, array[4]{23, 26, 15, 23}, array[4]{23, 31, 15, 23}, array[4]{23, 31, 26, 23}, array[4]{21, 17, 15, 21}, array[4]{21, 31, 15, 21}, array[4]{21, 31, 17, 21}, array[4]{28, 26, 30, 28}, array[4]{28, 31, 30, 28}, array[4]{28, 31, 26, 28}};




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
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
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
