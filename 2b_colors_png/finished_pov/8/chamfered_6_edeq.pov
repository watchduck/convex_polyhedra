#include "polyhedra_colors.inc"



#declare Factor = 9*sqrt(2)/(4*(sqrt(3)/2 + 1));
#declare Abs = array[3]{ (0.5)*Factor, (1/2 + sqrt(3)/3)*Factor, (1/2 + 2*sqrt(3)/3)*Factor, }
#declare P = array[32]{ <-Abs[2],-Abs[0],-Abs[0]>, <-Abs[2],-Abs[0],Abs[0]>, <-Abs[2],Abs[0],-Abs[0]>, <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <-Abs[0],-Abs[2],-Abs[0]>, <-Abs[0],-Abs[2],Abs[0]>, <-Abs[0],-Abs[0],-Abs[2]>, <-Abs[0],-Abs[0],Abs[2]>, <-Abs[0],Abs[0],-Abs[2]>, <-Abs[0],Abs[0],Abs[2]>, <-Abs[0],Abs[2],-Abs[0]>, <-Abs[0],Abs[2],Abs[0]>, <Abs[0],-Abs[2],-Abs[0]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],-Abs[0],-Abs[2]>, <Abs[0],-Abs[0],Abs[2]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],-Abs[0]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],-Abs[0],-Abs[0]>, <Abs[2],-Abs[0],Abs[0]>, <Abs[2],Abs[0],-Abs[0]>, <Abs[2],Abs[0],Abs[0]>, }

#declare YellowVertices = array[8]{4, 5, 6, 7, 24, 25, 26, 27};

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 28, 29, 30, 31};

#declare UncoloredEdges = array[48]{array[2]{7, 13}, array[2]{6, 12}, array[2]{19, 21}, array[2]{6, 14}, array[2]{0, 4}, array[2]{13, 21}, array[2]{9, 17}, array[2]{8, 9}, array[2]{20, 26}, array[2]{17, 25}, array[2]{22, 23}, array[2]{14, 22}, array[2]{10, 12}, array[2]{30, 31}, array[2]{0, 2}, array[2]{26, 30}, array[2]{8, 16}, array[2]{24, 28}, array[2]{7, 15}, array[2]{4, 10}, array[2]{1, 3}, array[2]{12, 20}, array[2]{5, 11}, array[2]{16, 24}, array[2]{23, 27}, array[2]{15, 23}, array[2]{4, 8}, array[2]{11, 13}, array[2]{19, 25}, array[2]{28, 30}, array[2]{29, 31}, array[2]{25, 29}, array[2]{3, 7}, array[2]{0, 1}, array[2]{22, 26}, array[2]{16, 17}, array[2]{27, 31}, array[2]{18, 24}, array[2]{2, 6}, array[2]{1, 5}, array[2]{10, 18}, array[2]{21, 27}, array[2]{28, 29}, array[2]{14, 15}, array[2]{5, 9}, array[2]{2, 3}, array[2]{11, 19}, array[2]{18, 20}};

#declare RedFaces = array[6]{array[5]{17, 16, 8, 9, 17}, array[5]{14, 22, 23, 15, 14}, array[5]{1, 3, 2, 0, 1}, array[5]{31, 30, 28, 29, 31}, array[5]{12, 10, 18, 20, 12}, array[5]{19, 21, 13, 11, 19}};

#declare BlueFaces = array[12]{array[7]{22, 26, 30, 31, 27, 23, 22}, array[7]{15, 14, 6, 2, 3, 7, 15}, array[7]{31, 27, 21, 19, 25, 29, 31}, array[7]{21, 13, 7, 15, 23, 27, 21}, array[7]{12, 6, 14, 22, 26, 20, 12}, array[7]{17, 16, 24, 28, 29, 25, 17}, array[7]{10, 12, 6, 2, 0, 4, 10}, array[7]{19, 25, 17, 9, 5, 11, 19}, array[7]{24, 18, 20, 26, 30, 28, 24}, array[7]{9, 8, 4, 0, 1, 5, 9}, array[7]{8, 4, 10, 18, 24, 16, 8}, array[7]{1, 5, 11, 13, 7, 3, 1}};





    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }
    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
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
