#include "polyhedra_colors.inc"


#declare Factor = 1.2 * (3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4)));

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare FaceArray = array[6]{11, 14, 1, 19, 2, 11};  // corresponds to 10, 12, 4, 16, 6 in the dodecahedron


// declare vertices

#declare Vertices = union{
    #for( Index, 0, 19 )
        sphere{ P[Index], RadVert }
    #end
}


// declare edges

#declare Edges = union{
    cylinder{ P[11], P[14], RadEdge }
    cylinder{ P[14], P[1], RadEdge }
    cylinder{ P[1], P[19], RadEdge }
    cylinder{ P[19], P[2], RadEdge }
    cylinder{ P[2], P[11], RadEdge }
}
#declare Edges = union{
    object{ Edges }
    object{ Edges  scale -y}
}
#declare EdgesZ = union{
    object{ Edges }
    object{ Edges  scale -z}
}
#declare EdgesX = object{ EdgesZ  rotate 90*y rotate 90*x }
#declare EdgesY = object{ EdgesZ  rotate 90*x rotate 90*y }
#declare Edges = union{
    object{ EdgesX }
    object{ EdgesY }
    object{ EdgesZ }
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
    object{ Vertices  texture{ TYellow } }
    object{ Edges  texture{ TBlue } }
    object{ Polygons  texture{ TRed } }
}


