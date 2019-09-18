#include "polyhedra_colors.inc"

#declare Factor = 1.2 * (3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4)));


// vertices and edges of the regular dodecahedron

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }
#declare Dodeca = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare YellowVertices = array[8]{2, 3, 4, 5, 14, 15, 16, 17};

#declare UncoloredVertices = array[12]{0, 1, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19};

#declare RedEdges = array[6]{array[2]{7, 13}, array[2]{6, 12}, array[2]{10, 11}, array[2]{18, 19}, array[2]{8, 9}, array[2]{0, 1}};

#declare UncoloredEdges = array[24]{array[2]{15, 18}, array[2]{13, 15}, array[2]{4, 10}, array[2]{9, 15}, array[2]{1, 4}, array[2]{4, 6}, array[2]{8, 14}, array[2]{11, 17}, array[2]{0, 2}, array[2]{16, 19}, array[2]{14, 18}, array[2]{2, 6}, array[2]{1, 5}, array[2]{0, 3}, array[2]{5, 7}, array[2]{3, 9}, array[2]{12, 14}, array[2]{17, 19}, array[2]{10, 16}, array[2]{13, 17}, array[2]{2, 8}, array[2]{5, 11}, array[2]{12, 16}, array[2]{3, 7}};

union{
    #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
        sphere{ Dodeca[UncoloredVertices[Index]], RadVert }
    #end
    texture{ TLightgray }
}
union{
    #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
        sphere{ Dodeca[YellowVertices[Index]], RadVert }
    #end
    texture{ TYellow }
}

union{
    #for( Index, 0, dimension_size(RedEdges, 1) - 1 )
        #local EdgeArray = RedEdges[Index];
        cylinder{ Dodeca[EdgeArray[0]], Dodeca[EdgeArray[1]], RadEdge }
    #end
    texture{ TRed }
}
union{
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ Dodeca[EdgeArray[0]], Dodeca[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}


// edges of the great stellated dodecahedron

#declare RadEdge = RadEdge * 2/3;

#declare GrayEdges = union{
    cylinder{ Dodeca[11], Dodeca[14], RadEdge }
    cylinder{ Dodeca[14], Dodeca[1], RadEdge }
    cylinder{ Dodeca[1], Dodeca[19], RadEdge }
    cylinder{ Dodeca[19], Dodeca[2], RadEdge }
    cylinder{ Dodeca[2], Dodeca[11], RadEdge }
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

#declare RedEdge = cylinder{ Dodeca[8], Dodeca[10], RadEdge + 0.001 }
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

union{
    object{ GrayEdges  texture{ TGray } }
    object{ RedEdges  texture{ TRed } }
}


// faces of the excavated dodecahedron

#declare Factor = Factor * (3-sqrt(5)) / 2;
#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }
#declare Icosa = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare FirstPolygons = union{
    polygon{ 4, Dodeca[4], Dodeca[10], Icosa[6], Dodeca[4]}
	polygon{ 4, Dodeca[19], Dodeca[18], Icosa[10], Dodeca[19]}
	polygon{ 4, Dodeca[2], Dodeca[8], Icosa[4], Dodeca[2]}
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
    polygon{ 4, Dodeca[4], Dodeca[6], Icosa[6], Dodeca[4]}
	polygon{ 4, Dodeca[11], Dodeca[17], Icosa[9], Dodeca[11]}
	polygon{ 4, Dodeca[18], Dodeca[14], Icosa[10], Dodeca[18]}
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

union {
    object{ FirstPolygons  texture{ TLightgray } }
    object{ SecondPolygons  texture{ TYellow } }
}
