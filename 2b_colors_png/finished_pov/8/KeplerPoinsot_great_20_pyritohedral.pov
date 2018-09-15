#include "polyhedra_colors.inc"


#declare Factor = 1.2 * (3/(1/2 + sqrt(5)/2));

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare FirstFaceArray = array[4]{9, 8, 0, 9};     // corresponds to 4, 6, 10 in the icosahedron
#declare SecondFaceArray = array[4]{11, 4, 3, 11};  // corresponds to 6, 9, 10 in the icosahedron


// declare vertices

#declare Vertices = union{
    #for( Index, 0, 11 )
        sphere{ P[Index], RadVert }
    #end
}


// declare edges

#declare GrayEdges = union{
    cylinder{ P[4], P[9], RadEdge }
    cylinder{ P[9], P[8], RadEdge }
    cylinder{ P[8], P[6], RadEdge }
    cylinder{ P[6], P[11], RadEdge }
    cylinder{ P[11], P[4], RadEdge }
}
#declare GrayEdges = union{
    object{ GrayEdges }
    object{ GrayEdges  scale -x }
}
#declare GrayEdgesZ = union{
    object{ GrayEdges }
    object{ GrayEdges  scale -z }
}
#declare GrayEdgesX = object{ GrayEdgesZ  rotate 90*y rotate 90*x }
#declare GrayEdgesY = object{ GrayEdgesZ  rotate 90*x rotate 90*y }
#declare GrayEdges = union{
    object{ GrayEdgesX }
    object{ GrayEdgesY }
    object{ GrayEdgesZ }
}

#declare RedEdge = cylinder{ P[0], P[10], RadEdge + 0.001 }
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

#declare FirstPolygons = union{
    polygon{ 4,
        #for(i, 0, 3)
            P[FirstFaceArray[i]]
        #end
    }
}
#declare FirstPolygons = union{
    object{ FirstPolygons }
    object{ FirstPolygons  scale -x }
}
#declare FirstPolygonsZ = union{
    object{ FirstPolygons }
    object{ FirstPolygons  scale -z }
}
#declare FirstPolygonsX = object{ FirstPolygonsZ  rotate 90*y rotate 90*x }
#declare FirstPolygonsY = object{ FirstPolygonsZ  rotate 90*x rotate 90*y }
#declare FirstPolygons = union{
    object{ FirstPolygonsX }
    object{ FirstPolygonsY }
    object{ FirstPolygonsZ }
}

#declare SecondPolygons = union{
    polygon{ 4,
        #for(i, 0, 3)
            P[SecondFaceArray[i]]
        #end
    }
}
#declare SecondPolygons = union{
    object{ SecondPolygons }
    object{ SecondPolygons  scale -x }
}
#declare SecondPolygons = union{
    object{ SecondPolygons }
    object{ SecondPolygons  scale -y }
}
#declare SecondPolygons = union{
    object{ SecondPolygons }
    object{ SecondPolygons  scale -z }
}


// show object

union {
    object{ Vertices  texture{ TLightblue } }
    object{ GrayEdges  texture{ TGray } }
    object{ RedEdges  texture{ TRed } }
    object{ FirstPolygons  texture{ TLightgray } }
    object{ SecondPolygons  texture{ TYellow } }
}




