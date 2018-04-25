#include "polyhedra_colors.inc"



#declare Factor = 3.2;
#declare Abs = array[3]{ (0.33775397381375233)*Factor, (0.6212264105565853)*Factor, (1.1426135089259621)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, }


#declare UncoloredVertices = array[24]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};


#declare BlueEdges = array[12]{array[2]{17, 22}, array[2]{0, 4}, array[2]{2, 5}, array[2]{9, 12}, array[2]{1, 6}, array[2]{10, 15}, array[2]{19, 23}, array[2]{11, 14}, array[2]{3, 7}, array[2]{16, 20}, array[2]{8, 13}, array[2]{18, 21}};

#declare YellowEdges = array[24]{array[2]{14, 22}, array[2]{7, 10}, array[2]{13, 21}, array[2]{0, 8}, array[2]{12, 20}, array[2]{6, 11}, array[2]{13, 16}, array[2]{19, 22}, array[2]{14, 19}, array[2]{0, 5}, array[2]{1, 4}, array[2]{2, 10}, array[2]{18, 23}, array[2]{3, 6}, array[2]{3, 11}, array[2]{16, 21}, array[2]{17, 20}, array[2]{12, 17}, array[2]{15, 23}, array[2]{4, 9}, array[2]{2, 7}, array[2]{1, 9}, array[2]{15, 18}, array[2]{5, 8}};

#declare RedEdges = array[24]{
    array[2]{10, 18}, array[2]{13, 18}, array[2]{5, 13}, array[2]{5, 10}, 
    array[2]{7, 11}, array[2]{11, 19}, array[2]{15, 19}, array[2]{7, 15}, 
    array[2]{21, 23}, array[2]{22, 23}, array[2]{20, 22}, array[2]{20, 21}, 
    array[2]{6, 14}, array[2]{6, 9}, array[2]{9, 17}, array[2]{14, 17}, 
    array[2]{0, 1}, array[2]{1, 3}, array[2]{2, 3}, array[2]{0, 2}, 
    array[2]{4, 8}, array[2]{4, 12}, array[2]{12, 16}, array[2]{8, 16}
};


#declare RedFaces = array[6]{array[5]{1, 0, 2, 3, 1}, array[5]{11, 19, 15, 7, 11}, array[5]{20, 21, 23, 22, 20}, array[5]{10, 5, 13, 18, 10}, array[5]{16, 8, 4, 12, 16}, array[5]{6, 14, 17, 9, 6}};

#declare YellowFaces = array[8]{array[4]{11, 3, 6, 11}, array[4]{5, 8, 0, 5}, array[4]{15, 23, 18, 15}, array[4]{4, 1, 9, 4}, array[4]{2, 10, 7, 2}, array[4]{14, 22, 19, 14}, array[4]{12, 17, 20, 12}, array[4]{13, 21, 16, 13}};

#declare UncoloredFaces = array[24]{array[4]{1, 9, 6, 1}, array[4]{1, 3, 6, 1}, array[4]{11, 3, 7, 11}, array[4]{15, 10, 7, 15}, array[4]{15, 10, 18, 15}, array[4]{15, 23, 19, 15}, array[4]{22, 23, 19, 22}, array[4]{22, 17, 20, 22}, array[4]{4, 8, 0, 4}, array[4]{4, 1, 0, 4}, array[4]{21, 23, 18, 21}, array[4]{21, 16, 20, 21}, array[4]{2, 3, 7, 2}, array[4]{2, 5, 0, 2}, array[4]{2, 5, 10, 2}, array[4]{14, 11, 19, 14}, array[4]{14, 11, 6, 14}, array[4]{14, 22, 17, 14}, array[4]{12, 16, 20, 12}, array[4]{12, 17, 9, 12}, array[4]{12, 4, 9, 12}, array[4]{13, 5, 8, 13}, array[4]{13, 16, 8, 13}, array[4]{13, 21, 18, 13}};



union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TBrown }
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

    scale -x
    rotate Rotate
}
