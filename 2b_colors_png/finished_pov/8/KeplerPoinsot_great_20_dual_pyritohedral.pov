#include "polyhedra_colors.inc"


#declare Factor = 1.2 * (3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4)));

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare GrayVertexArray = array[12]{0, 1, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19};
#declare YellowVertexArray = array[8]{2, 3, 4, 5, 14, 15, 16, 17};

#declare FaceArray = array[6]{11, 14, 1, 19, 2, 11};  // corresponds to 10, 12, 4, 16, 6 in the dodecahedron


// declare vertices

#declare GrayVertices = union{
    #for( Index, 0, dimension_size(GrayVertexArray, 1) - 1 )
        sphere{ P[GrayVertexArray[Index]], RadVert }
    #end
}
#declare YellowVertices = union{
    #for( Index, 0, dimension_size(YellowVertexArray, 1) - 1 )
        sphere{ P[YellowVertexArray[Index]], RadVert }
    #end
}


// declare edges

#declare GrayEdges = union{
    cylinder{ P[11], P[14], RadEdge }
    cylinder{ P[14], P[1], RadEdge }
    cylinder{ P[1], P[19], RadEdge }
    cylinder{ P[19], P[2], RadEdge }
    cylinder{ P[2], P[11], RadEdge }
}
#declare GrayEdges = union{
    object{ GrayEdges }
    object{ GrayEdges  scale -y}
}
#declare GrayEdgesZ = union{
    object{ GrayEdges }
    object{ GrayEdges  scale -z}
}
#declare GrayEdgesX = object{ GrayEdgesZ  rotate 90*y rotate 90*x }
#declare GrayEdgesY = object{ GrayEdgesZ  rotate 90*x rotate 90*y }
#declare GrayEdges = union{
    object{ GrayEdgesX }
    object{ GrayEdgesY }
    object{ GrayEdgesZ }
}

#declare RedEdge = cylinder{ P[8], P[10], RadEdge + 0.001 }
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

#declare Polygon = polygon{ 6,
    #for(i, 0, 5)
        P[FaceArray[i]]
    #end
}
#declare Polygons = union{
    object{ Polygon }
    object{ Polygon  scale -y}
}
#declare PolygonsZ = union{
    object{ Polygons }
    object{ Polygons  scale -z}
}
#declare PolygonsX = object{ PolygonsZ  rotate 90*y rotate 90*x }
#declare PolygonsY = object{ PolygonsZ  rotate 90*x rotate 90*y }
#declare Polygons = union{
    object{ PolygonsX }
    object{ PolygonsY }
    object{ PolygonsZ }
}


// show object

union{
    object{ GrayVertices  texture{ TLightgray } }
    object{ YellowVertices  texture{ TYellow } }
    object{ GrayEdges  texture{ TGray } }
    object{ RedEdges  texture{ TRed } }
    object{ Polygons  texture{ TLightblue } }
}


