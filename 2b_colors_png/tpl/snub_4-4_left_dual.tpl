#include "polyhedra_colors.inc"



{{!sphere}}
#declare Factor = {{!factor}};


#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare RedVertices = array[4]{3, 4, 14, 17};

#declare YellowVertices = array[4]{2, 5, 15, 16};

#declare UncoloredVertices = array[12]{0, 1, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19};

#declare BlueEdges = array[6]{array[2]{0, 1}, array[2]{10, 11}, array[2]{7, 13}, array[2]{8, 9}, array[2]{6, 12}, array[2]{18, 19}};

#declare YellowEdges = array[12]{array[2]{1, 5}, array[2]{0, 2}, array[2]{9, 15}, array[2]{5, 11}, array[2]{2, 8}, array[2]{13, 15}, array[2]{15, 18}, array[2]{12, 16}, array[2]{2, 6}, array[2]{16, 19}, array[2]{5, 7}, array[2]{10, 16}};

#declare RedEdges = array[12]{array[2]{3, 7}, array[2]{0, 3}, array[2]{3, 9}, array[2]{4, 6}, array[2]{1, 4}, array[2]{4, 10}, array[2]{8, 14}, array[2]{14, 18}, array[2]{12, 14}, array[2]{13, 17}, array[2]{11, 17}, array[2]{17, 19}};

#declare UncoloredFaces = array[12]{array[6]{14, 18, 15, 9, 8, 14}, array[6]{19, 17, 13, 15, 18, 19}, array[6]{6, 2, 8, 14, 12, 6}, array[6]{1, 0, 2, 6, 4, 1}, array[6]{16, 19, 17, 11, 10, 16}, array[6]{3, 7, 13, 15, 9, 3}, array[6]{12, 14, 18, 19, 16, 12}, array[6]{3, 9, 8, 2, 0, 3}, array[6]{11, 5, 7, 13, 17, 11}, array[6]{10, 4, 6, 12, 16, 10}, array[6]{3, 0, 1, 5, 7, 3}, array[6]{10, 11, 5, 1, 4, 10}};






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
        texture{ TGray }
    }
    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }

    union{
        #for( Index, 0, dimension_size(YellowEdges, 1) - 1 )
            #local EdgeArray = YellowEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TYellowish }
    }
    union{
        #for( Index, 0, dimension_size(RedEdges, 1) - 1 )
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TReddish }
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
