#include "polyhedra_colors.inc"



#declare Factor = 3/(sqrt(2)/2 + 1);
#declare Abs = array[3]{ (0)*Factor, (1.0)*Factor, (1 + sqrt(2))*Factor, }
#declare P = array[10]{ <-Abs[2],Abs[0],Abs[0]>, <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <Abs[0],-Abs[2],Abs[0]>, <Abs[0],Abs[0],-Abs[2]>, <Abs[0],Abs[0],Abs[2]>, <Abs[0],Abs[2],Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, <Abs[2],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{1, 2, 7, 8};

#declare BlueVertices = array[6]{0, 3, 4, 5, 6, 9};

#declare UncoloredEdges = array[24]{array[2]{7, 9}, array[2]{3, 4}, array[2]{2, 6}, array[2]{3, 5}, array[2]{0, 1}, array[2]{1, 5}, array[2]{5, 9}, array[2]{3, 7}, array[2]{0, 5}, array[2]{0, 4}, array[2]{4, 6}, array[2]{1, 3}, array[2]{5, 8}, array[2]{4, 7}, array[2]{8, 9}, array[2]{5, 6}, array[2]{0, 2}, array[2]{6, 9}, array[2]{0, 6}, array[2]{2, 4}, array[2]{4, 9}, array[2]{6, 8}, array[2]{3, 9}, array[2]{0, 3}};

#declare YellowFaces = array[4]{array[4]{5, 6, 0, 5}, array[4]{4, 6, 9, 4}, array[4]{3, 5, 9, 3}, array[4]{3, 4, 0, 3}};

#declare UncoloredFaces = array[12]{array[4]{8, 5, 9, 8}, array[4]{8, 6, 9, 8}, array[4]{8, 5, 6, 8}, array[4]{2, 4, 0, 2}, array[4]{2, 6, 0, 2}, array[4]{2, 4, 6, 2}, array[4]{1, 5, 0, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 3, 5, 1}, array[4]{7, 4, 9, 7}, array[4]{7, 3, 9, 7}, array[4]{7, 3, 4, 7}};




    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[BlueVertices[Index]], RadVert }
        #end
        texture{ TBlue }
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
