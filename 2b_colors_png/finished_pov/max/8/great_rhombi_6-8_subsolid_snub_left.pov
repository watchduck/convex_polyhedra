#include "polyhedra_colors.inc"




#declare Factor = .92;


#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[1],Abs[0]>, }

#declare UncoloredVertices = array[24]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};

#declare BlueEdges = array[12]{array[2]{18, 21}, array[2]{9, 12}, array[2]{2, 5}, array[2]{1, 6}, array[2]{10, 15}, array[2]{11, 14}, array[2]{8, 13}, array[2]{19, 23}, array[2]{0, 4}, array[2]{16, 20}, array[2]{3, 7}, array[2]{17, 22}};

#declare YellowEdges = array[24]{array[2]{14, 22}, array[2]{7, 10}, array[2]{13, 21}, array[2]{0, 8}, array[2]{12, 20}, array[2]{6, 11}, array[2]{13, 16}, array[2]{19, 22}, array[2]{14, 19}, array[2]{0, 5}, array[2]{1, 4}, array[2]{2, 10}, array[2]{18, 23}, array[2]{3, 6}, array[2]{3, 11}, array[2]{16, 21}, array[2]{17, 20}, array[2]{12, 17}, array[2]{15, 23}, array[2]{4, 9}, array[2]{2, 7}, array[2]{1, 9}, array[2]{15, 18}, array[2]{5, 8}};

#declare RedEdges = array[24]{
    array[2]{10, 18}, array[2]{13, 18}, array[2]{5, 13}, array[2]{5, 10}, 
    array[2]{7, 11}, array[2]{11, 19}, array[2]{15, 19}, array[2]{7, 15}, 
    array[2]{21, 23}, array[2]{22, 23}, array[2]{20, 22}, array[2]{20, 21}, 
    array[2]{6, 14}, array[2]{6, 9}, array[2]{9, 17}, array[2]{14, 17}, 
    array[2]{0, 1}, array[2]{1, 3}, array[2]{2, 3}, array[2]{0, 2}, 
    array[2]{4, 8}, array[2]{4, 12}, array[2]{12, 16}, array[2]{8, 16}
};

#declare RedFaces = array[6]{array[5]{0, 1, 3, 2, 0}, array[5]{7, 15, 19, 11, 7}, array[5]{23, 21, 20, 22, 23}, array[5]{18, 10, 5, 13, 18}, array[5]{16, 8, 4, 12, 16}, array[5]{9, 17, 14, 6, 9}};

#declare YellowFaces = array[8]{array[4]{11, 3, 6, 11}, array[4]{4, 1, 9, 4}, array[4]{23, 15, 18, 23}, array[4]{16, 21, 13, 16}, array[4]{14, 22, 19, 14}, array[4]{8, 5, 0, 8}, array[4]{12, 17, 20, 12}, array[4]{10, 2, 7, 10}};

#declare UncoloredFaces = array[24]{array[4]{1, 9, 6, 1}, array[4]{1, 3, 6, 1}, array[4]{11, 3, 7, 11}, array[4]{21, 13, 18, 21}, array[4]{4, 1, 0, 4}, array[4]{17, 22, 20, 17}, array[4]{23, 15, 19, 23}, array[4]{23, 21, 18, 23}, array[4]{23, 22, 19, 23}, array[4]{16, 21, 20, 16}, array[4]{2, 5, 0, 2}, array[4]{2, 3, 7, 2}, array[4]{14, 11, 6, 14}, array[4]{14, 17, 22, 14}, array[4]{14, 11, 19, 14}, array[4]{8, 16, 13, 8}, array[4]{8, 4, 0, 8}, array[4]{8, 5, 13, 8}, array[4]{12, 16, 20, 12}, array[4]{12, 17, 9, 12}, array[4]{12, 4, 9, 12}, array[4]{10, 15, 7, 10}, array[4]{10, 2, 5, 10}, array[4]{10, 15, 18, 10}};



union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
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

    scale -x
    rotate Rotate
}
