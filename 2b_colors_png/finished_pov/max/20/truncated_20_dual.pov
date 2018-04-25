#include "polyhedra_colors.inc"




#declare Factor = 1.6;


#declare Abs = array[6]{ (0.0)*Factor, (-3/4 + 3*sqrt(5)/4)*Factor, (9*sqrt(5)/76 + 81/76)*Factor, (1.5)*Factor, (63/76 + 45*sqrt(5)/76)*Factor, (3/4 + 3*sqrt(5)/4)*Factor, }

#declare P = array[32]{ <-Abs[5],-Abs[1],Abs[0]>, <-Abs[5],Abs[1],Abs[0]>, <-Abs[4],Abs[0],-Abs[2]>, <-Abs[4],Abs[0],Abs[2]>, <-Abs[3],-Abs[3],-Abs[3]>, <-Abs[3],-Abs[3],Abs[3]>, <-Abs[3],Abs[3],-Abs[3]>, <-Abs[3],Abs[3],Abs[3]>, <-Abs[2],-Abs[4],Abs[0]>, <-Abs[2],Abs[4],Abs[0]>, <-Abs[1],Abs[0],-Abs[5]>, <-Abs[1],Abs[0],Abs[5]>, <-Abs[0],-Abs[5],-Abs[1]>, <-Abs[0],-Abs[5],Abs[1]>, <-Abs[0],-Abs[2],-Abs[4]>, <-Abs[0],-Abs[2],Abs[4]>, <-Abs[0],Abs[2],-Abs[4]>, <-Abs[0],Abs[2],Abs[4]>, <-Abs[0],Abs[5],-Abs[1]>, <-Abs[0],Abs[5],Abs[1]>, <Abs[1],Abs[0],-Abs[5]>, <Abs[1],Abs[0],Abs[5]>, <Abs[2],-Abs[4],Abs[0]>, <Abs[2],Abs[4],Abs[0]>, <Abs[3],-Abs[3],-Abs[3]>, <Abs[3],-Abs[3],Abs[3]>, <Abs[3],Abs[3],-Abs[3]>, <Abs[3],Abs[3],Abs[3]>, <Abs[4],Abs[0],-Abs[2]>, <Abs[4],Abs[0],Abs[2]>, <Abs[5],-Abs[1],Abs[0]>, <Abs[5],Abs[1],Abs[0]>, }

#declare RedVertices = array[12]{2, 3, 8, 9, 14, 15, 16, 17, 22, 23, 28, 29};

#declare YellowVertices = array[20]{0, 1, 4, 5, 6, 7, 10, 11, 12, 13, 18, 19, 20, 21, 24, 25, 26, 27, 30, 31};

#declare BlueEdges = array[30]{array[2]{5, 13}, array[2]{4, 12}, array[2]{6, 18}, array[2]{12, 13}, array[2]{11, 21}, array[2]{21, 27}, array[2]{19, 27}, array[2]{7, 19}, array[2]{20, 24}, array[2]{27, 31}, array[2]{26, 31}, array[2]{24, 30}, array[2]{13, 25}, array[2]{25, 30}, array[2]{18, 26}, array[2]{21, 25}, array[2]{30, 31}, array[2]{7, 11}, array[2]{10, 20}, array[2]{1, 7}, array[2]{4, 10}, array[2]{18, 19}, array[2]{1, 6}, array[2]{5, 11}, array[2]{12, 24}, array[2]{0, 1}, array[2]{20, 26}, array[2]{0, 5}, array[2]{6, 10}, array[2]{0, 4}};

#declare UncoloredEdges = array[60]{array[2]{29, 31}, array[2]{1, 2}, array[2]{22, 25}, array[2]{22, 30}, array[2]{25, 29}, array[2]{3, 5}, array[2]{9, 18}, array[2]{4, 14}, array[2]{28, 31}, array[2]{6, 9}, array[2]{4, 8}, array[2]{11, 17}, array[2]{1, 9}, array[2]{7, 17}, array[2]{15, 25}, array[2]{29, 30}, array[2]{23, 26}, array[2]{8, 13}, array[2]{12, 14}, array[2]{10, 14}, array[2]{19, 23}, array[2]{17, 19}, array[2]{22, 24}, array[2]{12, 22}, array[2]{28, 30}, array[2]{26, 28}, array[2]{21, 29}, array[2]{0, 8}, array[2]{11, 15}, array[2]{20, 28}, array[2]{14, 24}, array[2]{23, 31}, array[2]{16, 26}, array[2]{27, 29}, array[2]{16, 20}, array[2]{9, 19}, array[2]{2, 4}, array[2]{3, 7}, array[2]{0, 2}, array[2]{24, 28}, array[2]{6, 16}, array[2]{23, 27}, array[2]{17, 27}, array[2]{13, 22}, array[2]{14, 20}, array[2]{2, 10}, array[2]{16, 18}, array[2]{3, 11}, array[2]{15, 21}, array[2]{5, 8}, array[2]{5, 15}, array[2]{8, 12}, array[2]{2, 6}, array[2]{10, 16}, array[2]{13, 15}, array[2]{7, 9}, array[2]{1, 3}, array[2]{0, 3}, array[2]{18, 23}, array[2]{17, 21}};

#declare UncoloredFaces = array[60]{array[4]{8, 5, 0, 8}, array[4]{8, 5, 13, 8}, array[4]{25, 22, 30, 25}, array[4]{25, 22, 13, 25}, array[4]{23, 26, 18, 23}, array[4]{12, 8, 13, 12}, array[4]{12, 22, 13, 12}, array[4]{4, 8, 0, 4}, array[4]{4, 10, 14, 4}, array[4]{4, 12, 14, 4}, array[4]{4, 12, 8, 4}, array[4]{3, 5, 11, 3}, array[4]{3, 1, 0, 3}, array[4]{3, 5, 0, 3}, array[4]{3, 7, 11, 3}, array[4]{3, 7, 1, 3}, array[4]{24, 28, 30, 24}, array[4]{24, 22, 30, 24}, array[4]{24, 12, 14, 24}, array[4]{24, 12, 22, 24}, array[4]{20, 10, 14, 20}, array[4]{20, 28, 26, 20}, array[4]{20, 24, 14, 20}, array[4]{20, 24, 28, 20}, array[4]{9, 7, 1, 9}, array[4]{9, 6, 18, 9}, array[4]{9, 6, 1, 9}, array[4]{31, 28, 26, 31}, array[4]{31, 23, 26, 31}, array[4]{31, 28, 30, 31}, array[4]{31, 23, 27, 31}, array[4]{2, 1, 0, 2}, array[4]{2, 6, 1, 2}, array[4]{2, 6, 10, 2}, array[4]{2, 4, 0, 2}, array[4]{2, 4, 10, 2}, array[4]{15, 5, 11, 15}, array[4]{15, 5, 13, 15}, array[4]{15, 25, 13, 15}, array[4]{15, 21, 11, 15}, array[4]{15, 21, 25, 15}, array[4]{16, 6, 10, 16}, array[4]{16, 6, 18, 16}, array[4]{16, 26, 18, 16}, array[4]{16, 20, 26, 16}, array[4]{16, 20, 10, 16}, array[4]{19, 23, 27, 19}, array[4]{19, 9, 7, 19}, array[4]{19, 23, 18, 19}, array[4]{19, 9, 18, 19}, array[4]{29, 21, 25, 29}, array[4]{29, 21, 27, 29}, array[4]{29, 25, 30, 29}, array[4]{29, 31, 30, 29}, array[4]{29, 31, 27, 29}, array[4]{17, 7, 11, 17}, array[4]{17, 21, 11, 17}, array[4]{17, 21, 27, 17}, array[4]{17, 19, 27, 17}, array[4]{17, 19, 7, 17}};





    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }
    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }

    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
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
