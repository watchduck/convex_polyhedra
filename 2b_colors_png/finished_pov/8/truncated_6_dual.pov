#include "polyhedra_colors.inc"




#declare Factor = 3/(sqrt(2)/2 + 1);


#declare Abs = array[3]{ (0.0)*Factor, (1.0)*Factor, (1 + sqrt(2))*Factor, }

#declare P = array[14]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],-Abs[1]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[1],Abs[1],Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],-Abs[1],Abs[1]>, <Abs[1],Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 5, 6, 7, 8, 13};

#declare YellowVertices = array[8]{1, 2, 3, 4, 9, 10, 11, 12};

#declare BlueEdges = array[12]{array[2]{0, 5}, array[2]{5, 6}, array[2]{0, 8}, array[2]{0, 7}, array[2]{0, 6}, array[2]{7, 13}, array[2]{5, 13}, array[2]{8, 13}, array[2]{5, 7}, array[2]{6, 13}, array[2]{7, 8}, array[2]{6, 8}};

#declare UncoloredEdges = array[24]{array[2]{2, 5}, array[2]{0, 4}, array[2]{8, 12}, array[2]{5, 9}, array[2]{1, 6}, array[2]{4, 7}, array[2]{3, 8}, array[2]{5, 10}, array[2]{11, 13}, array[2]{2, 7}, array[2]{6, 9}, array[2]{7, 12}, array[2]{0, 3}, array[2]{12, 13}, array[2]{8, 11}, array[2]{0, 2}, array[2]{1, 5}, array[2]{9, 13}, array[2]{4, 8}, array[2]{7, 10}, array[2]{10, 13}, array[2]{6, 11}, array[2]{3, 6}, array[2]{0, 1}};

#declare UncoloredFaces = array[24]{array[4]{4, 7, 0, 4}, array[4]{4, 8, 0, 4}, array[4]{4, 7, 8, 4}, array[4]{12, 7, 13, 12}, array[4]{12, 8, 13, 12}, array[4]{12, 7, 8, 12}, array[4]{3, 6, 0, 3}, array[4]{3, 8, 0, 3}, array[4]{3, 6, 8, 3}, array[4]{11, 6, 13, 11}, array[4]{11, 8, 13, 11}, array[4]{11, 6, 8, 11}, array[4]{10, 7, 13, 10}, array[4]{10, 5, 13, 10}, array[4]{10, 5, 7, 10}, array[4]{2, 7, 0, 2}, array[4]{2, 5, 0, 2}, array[4]{2, 5, 7, 2}, array[4]{1, 6, 0, 1}, array[4]{1, 5, 0, 1}, array[4]{1, 5, 6, 1}, array[4]{9, 6, 13, 9}, array[4]{9, 5, 13, 9}, array[4]{9, 5, 6, 9}};






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
