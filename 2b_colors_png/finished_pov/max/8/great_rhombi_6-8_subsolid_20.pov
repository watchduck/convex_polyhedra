#include "polyhedra_colors.inc"




#declare Factor = .92;


#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[12]{ <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, }

#declare LightbrownVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare RedEdges = array[6]{array[2]{10, 11}, array[2]{2, 8}, array[2]{3, 9}, array[2]{0, 1}, array[2]{5, 6}, array[2]{4, 7}};

#declare UncoloredEdges = array[24]{array[2]{1, 3}, array[2]{0, 4}, array[2]{9, 11}, array[2]{5, 9}, array[2]{2, 4}, array[2]{1, 5}, array[2]{6, 8}, array[2]{7, 11}, array[2]{6, 10}, array[2]{2, 6}, array[2]{0, 3}, array[2]{8, 11}, array[2]{7, 9}, array[2]{5, 10}, array[2]{8, 10}, array[2]{1, 2}, array[2]{4, 8}, array[2]{3, 7}, array[2]{0, 7}, array[2]{9, 10}, array[2]{0, 2}, array[2]{3, 5}, array[2]{4, 11}, array[2]{1, 6}};

#declare YellowFaces = array[8]{array[4]{7, 3, 0, 7}, array[4]{9, 5, 10, 9}, array[4]{1, 5, 3, 1}, array[4]{11, 9, 7, 11}, array[4]{8, 6, 10, 8}, array[4]{8, 11, 4, 8}, array[4]{2, 1, 6, 2}, array[4]{2, 4, 0, 2}};

#declare UncoloredFaces = array[12]{array[4]{6, 5, 10, 6}, array[4]{4, 7, 0, 4}, array[4]{9, 5, 3, 9}, array[4]{9, 7, 3, 9}, array[4]{1, 6, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{11, 4, 7, 11}, array[4]{11, 9, 10, 11}, array[4]{8, 11, 10, 8}, array[4]{2, 8, 6, 2}, array[4]{2, 1, 0, 2}, array[4]{2, 8, 4, 2}};




    union{
        #for( Index, 0, dimension_size(LightbrownVertices, 1) - 1 )
            sphere{ P[LightbrownVertices[Index]], RadVert }
        #end
        texture{ TLightbrown }
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
        texture{ TYellowish }
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
        texture{ TLightgray }
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
