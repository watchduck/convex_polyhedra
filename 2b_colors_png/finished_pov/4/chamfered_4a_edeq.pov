#include "polyhedra_colors.inc"



#declare Factor = 3*sqrt(6)/(sqrt(6)/2 + sqrt(3));
#declare Abs = array[2]{ (-sqrt(2)/4 + 1/2)*Factor, (sqrt(2)/4 + 1/2)*Factor, }
#declare P = array[16]{ <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],-Abs[0],Abs[1]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[1],-Abs[0]>, <-Abs[1],Abs[1],Abs[1]>, <-Abs[0],-Abs[1],Abs[1]>, <-Abs[0],Abs[1],-Abs[1]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],-Abs[0]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],-Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare YellowVertices = array[4]{0, 5, 11, 14};

#declare UncoloredVertices = array[12]{1, 2, 3, 4, 6, 7, 8, 9, 10, 12, 13, 15};

#declare UncoloredEdges = array[24]{array[2]{1, 6}, array[2]{0, 3}, array[2]{12, 14}, array[2]{7, 14}, array[2]{1, 2}, array[2]{2, 5}, array[2]{10, 11}, array[2]{9, 15}, array[2]{3, 7}, array[2]{8, 12}, array[2]{13, 15}, array[2]{11, 13}, array[2]{0, 8}, array[2]{6, 11}, array[2]{5, 9}, array[2]{2, 6}, array[2]{10, 12}, array[2]{8, 10}, array[2]{9, 13}, array[2]{14, 15}, array[2]{4, 7}, array[2]{3, 4}, array[2]{0, 1}, array[2]{4, 5}};

#declare RedFaces = array[4]{array[4]{1, 6, 2, 1}, array[4]{8, 12, 10, 8}, array[4]{7, 3, 4, 7}, array[4]{15, 13, 9, 15}};

#declare BlueFaces = array[6]{array[7]{10, 8, 0, 1, 6, 11, 10}, array[7]{0, 3, 4, 5, 2, 1, 0}, array[7]{15, 14, 7, 4, 5, 9, 15}, array[7]{9, 5, 2, 6, 11, 13, 9}, array[7]{11, 13, 15, 14, 12, 10, 11}, array[7]{3, 0, 8, 12, 14, 7, 3}};





    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
    }
    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
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
