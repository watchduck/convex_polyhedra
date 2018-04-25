#include "polyhedra_colors.inc"



#declare Factor = 3.67;
#declare Abs = array[2]{ (-sqrt(2)/4 + 1/2)*Factor, (sqrt(2)/4 + 1/2)*Factor, }
#declare P = array[16]{ <-Abs[1],-Abs[1],-Abs[0]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],-Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <-Abs[0],-Abs[1],-Abs[1]>, <-Abs[0],Abs[1],Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],-Abs[0],Abs[1]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[1],-Abs[0]>, <Abs[1],Abs[1],Abs[1]>, }

#declare RedVertices = array[4]{1, 4, 10, 15};

#declare UncoloredVertices = array[12]{0, 2, 3, 5, 6, 7, 8, 9, 11, 12, 13, 14};

#declare UncoloredEdges = array[24]{array[2]{4, 9}, array[2]{8, 11}, array[2]{14, 15}, array[2]{5, 7}, array[2]{7, 15}, array[2]{1, 3}, array[2]{10, 11}, array[2]{12, 15}, array[2]{11, 12}, array[2]{0, 6}, array[2]{3, 5}, array[2]{4, 5}, array[2]{0, 2}, array[2]{6, 10}, array[2]{0, 1}, array[2]{10, 13}, array[2]{2, 4}, array[2]{3, 7}, array[2]{9, 14}, array[2]{8, 12}, array[2]{2, 6}, array[2]{13, 14}, array[2]{9, 13}, array[2]{1, 8}};

#declare YellowFaces = array[4]{array[4]{6, 2, 0, 6}, array[4]{14, 13, 9, 14}, array[4]{12, 11, 8, 12}, array[4]{7, 3, 5, 7}};

#declare BlueFaces = array[6]{array[7]{9, 4, 2, 6, 10, 13, 9}, array[7]{3, 1, 8, 12, 15, 7, 3}, array[7]{4, 9, 14, 15, 7, 5, 4}, array[7]{0, 2, 4, 5, 3, 1, 0}, array[7]{14, 15, 12, 11, 10, 13, 14}, array[7]{1, 8, 11, 10, 6, 0, 1}};





    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
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
