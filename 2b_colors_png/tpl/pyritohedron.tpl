#include "polyhedra_colors.inc"



#declare Factor = 2.3;
#declare Abs = array[4]{ (0)*Factor, (0.75)*Factor, (1)*Factor, (1.5)*Factor, }
#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare YellowVertices = array[8]{2, 3, 4, 5, 14, 15, 16, 17};

#declare UncoloredVertices = array[12]{0, 1, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19};

#declare RedEdges = array[6]{array[2]{0, 1}, array[2]{10, 11}, array[2]{18, 19}, array[2]{6, 12}, array[2]{7, 13}, array[2]{8, 9}};

#declare UncoloredEdges = array[24]{array[2]{1, 5}, array[2]{17, 19}, array[2]{4, 10}, array[2]{10, 16}, array[2]{4, 6}, array[2]{13, 17}, array[2]{12, 16}, array[2]{13, 15}, array[2]{9, 15}, array[2]{2, 8}, array[2]{5, 11}, array[2]{3, 9}, array[2]{0, 2}, array[2]{2, 6}, array[2]{5, 7}, array[2]{0, 3}, array[2]{14, 18}, array[2]{1, 4}, array[2]{12, 14}, array[2]{11, 17}, array[2]{8, 14}, array[2]{3, 7}, array[2]{16, 19}, array[2]{15, 18}};

#declare UncoloredFaces = array[12]{array[6]{8, 2, 0, 3, 9, 8}, array[6]{12, 14, 18, 19, 16, 12}, array[6]{7, 13, 17, 11, 5, 7}, array[6]{1, 0, 2, 6, 4, 1}, array[6]{15, 9, 8, 14, 18, 15}, array[6]{19, 17, 11, 10, 16, 19}, array[6]{10, 4, 6, 12, 16, 10}, array[6]{8, 2, 6, 12, 14, 8}, array[6]{15, 9, 3, 7, 13, 15}, array[6]{15, 18, 19, 17, 13, 15}, array[6]{1, 4, 10, 11, 5, 1}, array[6]{3, 0, 1, 5, 7, 3}};




sphere{<0, 0, 0>, 3   pigment{color rgbt<1, 1, 1, .4>}  }



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
        texture{ TLightgray }
    }

    union{
        #for( Index, 0, dimension_size(RedEdges, 1) - 1 )
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
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
