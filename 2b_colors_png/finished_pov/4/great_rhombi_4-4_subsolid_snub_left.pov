#include "polyhedra_colors.inc"




#declare Factor = 1.0*sqrt(2);


#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare UncoloredVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare BlueEdges = array[6]{array[2]{10, 11}, array[2]{5, 7}, array[2]{4, 6}, array[2]{2, 8}, array[2]{0, 1}, array[2]{3, 9}};

#declare YellowEdges = array[12]{array[2]{9, 10}, array[2]{8, 11}, array[2]{6, 9}, array[2]{6, 10}, array[2]{5, 11}, array[2]{0, 2}, array[2]{3, 7},  array[2]{5, 8}, array[2]{1, 7}, array[2]{1, 3}, array[2]{0, 4}, array[2]{2, 4}};

#declare RedEdges = array[12]{array[2]{0, 3}, array[2]{3, 6}, array[2]{0, 6}, array[2]{4, 10}, array[2]{8, 10}, array[2]{4, 8}, array[2]{1, 2}, array[2]{2, 5}, array[2]{1, 5}, array[2]{7, 9}, array[2]{7, 11}, array[2]{9, 11}};

#declare RedFaces = array[4]{array[4]{6, 3, 0, 6}, array[4]{1, 2, 5, 1}, array[4]{4, 8, 10, 4}, array[4]{11, 7, 9, 11}};

#declare YellowFaces = array[4]{array[4]{9, 6, 10, 9}, array[4]{7, 1, 3, 7}, array[4]{4, 2, 0, 4}, array[4]{11, 8, 5, 11}};

#declare UncoloredFaces = array[12]{array[4]{1, 3, 0, 1}, array[4]{1, 2, 0, 1}, array[4]{9, 6, 3, 9}, array[4]{8, 2, 5, 8}, array[4]{7, 1, 5, 7}, array[4]{7, 9, 3, 7}, array[4]{4, 8, 2, 4}, array[4]{4, 6, 0, 4}, array[4]{4, 6, 10, 4}, array[4]{11, 9, 10, 11}, array[4]{11, 7, 5, 11}, array[4]{11, 8, 10, 11}};


union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TDarkbrown }
    }

    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
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
        texture{ TLightgray }
    }

    rotate Rotate
}
