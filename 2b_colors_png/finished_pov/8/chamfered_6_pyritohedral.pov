#include "polyhedra_colors.inc"



#declare Factor = 2.3;
#declare Abs = array[4]{ (0.4)*Factor, (0.85)*Factor, (1)*Factor, (1.3)*Factor, }
#declare P = array[32]{ <-Abs[3],-Abs[1],-Abs[0]>, <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],-Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],-Abs[0],-Abs[3]>, <-Abs[1],-Abs[0],Abs[3]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <-Abs[0],-Abs[3],-Abs[1]>, <-Abs[0],-Abs[3],Abs[1]>, <-Abs[0],Abs[3],-Abs[1]>, <-Abs[0],Abs[3],Abs[1]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],-Abs[0],-Abs[3]>, <Abs[1],-Abs[0],Abs[3]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],-Abs[0]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],-Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare YellowVertices = array[8]{4, 5, 6, 7, 24, 25, 26, 27};

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 28, 29, 30, 31};

#declare UncoloredEdges = array[48]{array[2]{9, 21}, array[2]{16, 17}, array[2]{18, 19}, array[2]{26, 30}, array[2]{12, 13}, array[2]{1, 5}, array[2]{8, 10}, array[2]{2, 3}, array[2]{0, 1}, array[2]{2, 6}, array[2]{7, 15}, array[2]{30, 31}, array[2]{18, 26}, array[2]{1, 3}, array[2]{0, 2}, array[2]{25, 29}, array[2]{0, 4}, array[2]{9, 11}, array[2]{13, 17}, array[2]{5, 13}, array[2]{23, 27}, array[2]{4, 12}, array[2]{24, 28}, array[2]{28, 30}, array[2]{8, 20}, array[2]{5, 9}, array[2]{10, 22}, array[2]{19, 27}, array[2]{17, 25}, array[2]{14, 18}, array[2]{21, 23}, array[2]{14, 15}, array[2]{20, 22}, array[2]{16, 24}, array[2]{4, 8}, array[2]{6, 10}, array[2]{27, 31}, array[2]{3, 7}, array[2]{21, 25}, array[2]{6, 14}, array[2]{22, 26}, array[2]{28, 29}, array[2]{11, 23}, array[2]{20, 24}, array[2]{12, 16}, array[2]{7, 11}, array[2]{15, 19}, array[2]{29, 31}};

#declare RedFaces = array[6]{array[5]{2, 3, 1, 0, 2}, array[5]{16, 17, 13, 12, 16}, array[5]{21, 23, 11, 9, 21}, array[5]{8, 20, 22, 10, 8}, array[5]{29, 28, 30, 31, 29}, array[5]{14, 15, 19, 18, 14}};

#declare UncoloredFaces = array[12]{array[7]{2, 6, 14, 15, 7, 3, 2}, array[7]{20, 22, 26, 30, 28, 24, 20}, array[7]{25, 17, 16, 24, 28, 29, 25}, array[7]{7, 15, 19, 27, 23, 11, 7}, array[7]{21, 25, 29, 31, 27, 23, 21}, array[7]{19, 18, 26, 30, 31, 27, 19}, array[7]{1, 5, 9, 11, 7, 3, 1}, array[7]{16, 12, 4, 8, 20, 24, 16}, array[7]{14, 6, 10, 22, 26, 18, 14}, array[7]{4, 0, 2, 6, 10, 8, 4}, array[7]{25, 21, 9, 5, 13, 17, 25}, array[7]{4, 0, 1, 5, 13, 12, 4}};





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
        #for( Index, 0, dimension_size(UncoloredFaces, 1) - 1 )
            #local FaceArray = UncoloredFaces[Index];
            #local LenOfFaceArray = dimension_size(FaceArray, 1);
            polygon{ LenOfFaceArray,
                #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TLightblue }
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
