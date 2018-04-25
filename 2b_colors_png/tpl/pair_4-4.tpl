#include "polyhedra_colors.inc"



//////////////////////////////////////////////////////////////////// tetrahedron with yellow vertices

#declare Factor = 3;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, }

#declare YellowVertices = array[4]{0, 1, 2, 3};

#declare BlueEdges = array[6]{array[2]{0, 2}, array[2]{1, 3}, array[2]{1, 2}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 3}};

#declare RedFaces = array[4]{array[4]{1, 2, 0, 1}, array[4]{3, 2, 0, 3}, array[4]{3, 1, 0, 3}, array[4]{3, 1, 2, 3}};



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

//////////////////////////////////////////////////////////////////// tetrahedron with red vertices

#declare Factor = 3;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{0, 1, 2, 3};

#declare BlueEdges = array[6]{array[2]{0, 2}, array[2]{1, 3}, array[2]{1, 2}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 3}};

#declare YellowFaces = array[4]{array[4]{1, 2, 0, 1}, array[4]{3, 2, 0, 3}, array[4]{3, 1, 0, 3}, array[4]{3, 1, 2, 3}};



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

//////////////////////////////////////////////////////////////////// octahedron

#declare Factor = 3;

#declare Abs = array[2]{ (0)*Factor, (1)*Factor, }

#declare P = array[6]{ <-Abs[1],Abs[0],Abs[0]>, <Abs[0],-Abs[1],Abs[0]>, <Abs[0],Abs[0],-Abs[1]>, <Abs[0],Abs[0],Abs[1]>, <Abs[0],Abs[1],Abs[0]>, <Abs[1],Abs[0],Abs[0]>, }

#declare BlueVertices = array[6]{0, 1, 2, 3, 4, 5};

#declare UncoloredEdges = array[12]{array[2]{0, 3}, array[2]{3, 4}, array[2]{3, 5}, array[2]{1, 3}, array[2]{0, 1}, array[2]{1, 2}, array[2]{1, 5}, array[2]{4, 5}, array[2]{2, 4}, array[2]{0, 2}, array[2]{0, 4}, array[2]{2, 5}};


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
