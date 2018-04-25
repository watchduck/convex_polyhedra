#include "polyhedra_colors.inc"


//////////////////////////////////////////////////////////////////// cube

#declare Factor = 3*sqrt(2)/2;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare YellowVertices = array[8]{0, 1, 2, 3, 4, 5, 6, 7};

#declare BlueEdges = array[12]{array[2]{6, 7}, array[2]{1, 5}, array[2]{1, 3}, array[2]{4, 5}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{4, 6}, array[2]{0, 2}, array[2]{3, 7}, array[2]{2, 6}, array[2]{5, 7}};

#declare RedFaces = array[6]{array[5]{5, 4, 6, 7, 5}, array[5]{2, 0, 4, 6, 2}, array[5]{0, 4, 5, 1, 0}, array[5]{1, 3, 7, 5, 1}, array[5]{2, 6, 7, 3, 2}, array[5]{1, 0, 2, 3, 1}};




union{

    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TYellow }
    }

    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
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

    rotate Rotate
}


//////////////////////////////////////////////////////////////////// octahedron

#declare Factor = 3.0*sqrt(2);

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare RedVertices = array[6]{0, 1, 2, 3, 4, 5};

#declare BlueEdges = array[12]{array[2]{1, 5}, array[2]{1, 3}, array[2]{3, 5}, array[2]{4, 5}, array[2]{0, 1}, array[2]{1, 2}, array[2]{0, 4}, array[2]{3, 4}, array[2]{0, 2}, array[2]{2, 5}, array[2]{2, 4}, array[2]{0, 3}};

#declare YellowFaces = array[8]{array[4]{3, 4, 0, 3}, array[4]{3, 4, 5, 3}, array[4]{2, 4, 0, 2}, array[4]{2, 4, 5, 2}, array[4]{1, 3, 5, 1}, array[4]{1, 3, 0, 1}, array[4]{1, 2, 0, 1}, array[4]{1, 2, 5, 1}};


union{

    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
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

    rotate Rotate
}


//////////////////////////////////////////////////////////////////// cuboctahedron

#declare Factor = 3*sqrt(2)/2;

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[12]{ <-Abs[1],-Abs[1],Abs[0]>, <-Abs[1],Abs[0],-Abs[1]>, <-Abs[1],Abs[0],Abs[1]>, <-Abs[1],Abs[1],Abs[0]>, <Abs[0],-Abs[1],-Abs[1]>, <Abs[0],-Abs[1],Abs[1]>, <Abs[0],Abs[1],-Abs[1]>, <Abs[0],Abs[1],Abs[1]>, <Abs[1],-Abs[1],Abs[0]>, <Abs[1],Abs[0],-Abs[1]>, <Abs[1],Abs[0],Abs[1]>, <Abs[1],Abs[1],Abs[0]>, }

#declare BlueVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare UncoloredEdges = array[24]{array[2]{2, 5}, array[2]{1, 3}, array[2]{6, 9}, array[2]{4, 9}, array[2]{1, 4}, array[2]{1, 6}, array[2]{6, 11}, array[2]{7, 10}, array[2]{0, 5}, array[2]{5, 8}, array[2]{2, 7}, array[2]{4, 8}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{5, 10}, array[2]{7, 11}, array[2]{0, 2}, array[2]{8, 10}, array[2]{9, 11}, array[2]{8, 9}, array[2]{3, 6}, array[2]{3, 7}, array[2]{10, 11}};


#declare RadVert = RadVert * 2/3;
#declare RadEdge = RadEdge * 2/3;

union{

    union{
        #for( Index, 0, dimension_size(BlueVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
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

    rotate Rotate
}
