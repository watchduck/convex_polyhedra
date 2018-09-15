#include "polyhedra_colors.inc"


#declare Factor = 1.2 * (3/(1/2 + sqrt(5)/2));

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare FaceArray = array[6]{4, 9, 8, 6, 11, 4};


// declare vertices

#declare Vertices = union{
    #for( Index, 0, 11 )
        sphere{ P[Index], RadVert }
    #end
}


// declare edges

#declare Edges = union{
    cylinder{ P[4], P[9], RadEdge }
    cylinder{ P[9], P[8], RadEdge }
    cylinder{ P[8], P[6], RadEdge }
    cylinder{ P[6], P[11], RadEdge }
    cylinder{ P[11], P[4], RadEdge }
}
#declare Edges = union{
    object{ Edges }
    object{ Edges  scale -x }
}
#declare EdgesZ = union{
    object{ Edges }
    object{ Edges  scale -z }
}
#declare EdgesX = object{ EdgesZ  rotate 90*y rotate 90*x }
#declare EdgesY = object{ EdgesZ  rotate 90*x rotate 90*y }
#declare Edges = union{
    object{ EdgesX }
    object{ EdgesY }
    object{ EdgesZ }
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

union{
    object{ Vertices  texture{ TRed } }
    object{ Edges  texture{ TBlue } }
    object{ Polygons  texture{ TRed } }
}






