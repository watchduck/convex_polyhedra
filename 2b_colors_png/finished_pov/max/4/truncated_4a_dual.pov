#include "polyhedra_colors.inc"




#declare Factor = 1.04 * 2*sqrt(2);


#declare Abs = array[2]{ (9*sqrt(2)/20)*Factor, (3*sqrt(2)/4)*Factor, }

#declare P = array[8]{ <-Abs[1],-Abs[1],Abs[1]>, <-Abs[1],Abs[1],-Abs[1]>, <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[1],-Abs[1],-Abs[1]>, <Abs[1],Abs[1],Abs[1]>, }

#declare RedVertices = array[4]{0, 1, 6, 7};

#declare YellowVertices = array[4]{2, 3, 4, 5};

#declare BlueEdges = array[6]{array[2]{6, 7}, array[2]{1, 7}, array[2]{0, 6}, array[2]{0, 7}, array[2]{0, 1}, array[2]{1, 6}};

#declare UncoloredEdges = array[12]{array[2]{0, 4}, array[2]{1, 5}, array[2]{4, 6}, array[2]{2, 6}, array[2]{4, 7}, array[2]{1, 3}, array[2]{5, 7}, array[2]{1, 2}, array[2]{0, 3}, array[2]{0, 2}, array[2]{5, 6}, array[2]{3, 7}};

#declare UncoloredFaces = array[12]{array[4]{2, 6, 0, 2}, array[4]{2, 1, 0, 2}, array[4]{2, 1, 6, 2}, array[4]{4, 6, 0, 4}, array[4]{4, 7, 0, 4}, array[4]{4, 7, 6, 4}, array[4]{3, 1, 0, 3}, array[4]{3, 7, 0, 3}, array[4]{3, 7, 1, 3}, array[4]{5, 1, 6, 5}, array[4]{5, 7, 6, 5}, array[4]{5, 7, 1, 5}};






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
