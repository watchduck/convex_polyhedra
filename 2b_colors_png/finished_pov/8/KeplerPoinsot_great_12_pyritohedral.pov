#include "polyhedra_colors.inc"


#declare Factor = 1.2 * (3/(1/2 + sqrt(5)/2));

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare EdgeArrays = array[30]{array[2]{2, 4}, array[2]{4, 10}, array[2]{7, 9}, array[2]{7, 11}, array[2]{3, 7}, array[2]{1, 7}, array[2]{2, 8}, array[2]{2, 5}, array[2]{9, 10}, array[2]{4, 8}, array[2]{0, 4}, array[2]{10, 11}, array[2]{5, 7}, array[2]{3, 6}, array[2]{8, 11}, array[2]{8, 10}, array[2]{0, 2}, array[2]{9, 11}, array[2]{0, 1}, array[2]{6, 9}, array[2]{1, 3}, array[2]{5, 8}, array[2]{5, 11}, array[2]{6, 10}, array[2]{4, 6}, array[2]{1, 5}, array[2]{0, 6}, array[2]{0, 3}, array[2]{1, 2}, array[2]{3, 9}};

#declare FaceArray = array[6]{4, 6, 9, 11, 8, 4};


// declare vertices

#declare Vertices = union{
    #for( Index, 0, 11 )
        sphere{ P[Index], RadVert }
    #end
}


// declare edges

#declare GrayEdges = union{
    #for( Index, 0, dimension_size(EdgeArrays, 1) - 1 )
        #local EdgeArray = EdgeArrays[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
}

#declare RedEdge = cylinder{ P[4], P[6], RadEdge + 0.001 }
#declare RedEdgesZ = union{
    object{ RedEdge }
    object{ RedEdge  scale -z }
}
#declare RedEdgesX = object{ RedEdgesZ  rotate 90*y rotate 90*x }
#declare RedEdgesY = object{ RedEdgesZ  rotate 90*x rotate 90*y }
#declare RedEdges = union{
    object{ RedEdgesX }
    object{ RedEdgesY }
    object{ RedEdgesZ }
}

// declare faces

#declare Polygons = union{
    polygon{ 6,
        #for(i, 0, 5)
            P[FaceArray[i]]
        #end
    }
}
#declare Polygons = union{
    object{ Polygons }
    object{ Polygons  scale -x }
}
#declare PolygonsZ = union{
    object{ Polygons }
    object{ Polygons  scale -z }
}
#declare PolygonsX = object{ PolygonsZ  rotate 90*y rotate 90*x }
#declare PolygonsY = object{ PolygonsZ  rotate 90*x rotate 90*y }
#declare Polygons = union{
    object{ PolygonsX }
    object{ PolygonsY }
    object{ PolygonsZ }
}


// show object

union {
    object{ Vertices  texture{ TLightblue } }
    object{ GrayEdges  texture{ TGray } }
    object{ RedEdges  texture{ TRed } }
    object{ Polygons  texture{ TLightblue } }
}

