#include "polyhedra_with_duals.inc"



///////////////////////////////////////// 4b (light)

#declare Factor = 3;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare Faces = array[4]{array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[3], P[2], P[0], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[1], P[2], P[3]}};

#declare Edges = array[6]{array[2]{2, 3}, array[2]{1, 3}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 2}, array[2]{0, 2}};

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    texture{ Wood14_with_turbulence_lightened }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color DarkGray }
}


///////////////////////////////////////// 4a (dark)

#declare Factor = 3;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, }

#declare Faces = array[4]{array[4]{P[1], P[2], P[0], P[1]}, array[4]{P[3], P[2], P[0], P[3]}, array[4]{P[3], P[1], P[0], P[3]}, array[4]{P[3], P[1], P[2], P[3]}};

#declare Edges = array[6]{array[2]{2, 3}, array[2]{1, 3}, array[2]{0, 1}, array[2]{0, 3}, array[2]{1, 2}, array[2]{0, 2}};

union{
    #for( Index, 0, dimension_size(Faces, 1) - 1 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                FaceArray[VertexIndexInFace]
            #end
        }
    #end
    texture{ Wood14_with_turbulence_calm }
}

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(Edges, 1) - 1 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color LightGray }
}
