#include "polyhedra_colors.inc"



#declare Factor = 2.4053435187337375;
#declare Abs = array[3]{ (0.33775397381375233)*Factor, (0.6212264105565853)*Factor, (1.1426135089259621)*Factor, }

#declare P = array[24]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, }


#declare UncoloredVertices = array[7]{7, 10, 18, 23, 19, 15, 11};






#declare BlueEdges = array[2]{ array[2]{10, 15}, array[2]{19, 23} };

#declare YellowEdges = array[4]{ array[2]{7, 10}, array[2]{15, 18}, array[2]{18, 23}, array[2]{15, 23},  };

#declare RedEdges = array[5]{ array[2]{10, 18}, array[2]{7, 15}, array[2]{15, 19}, array[2]{11, 19}, array[2]{7, 11},  };







camera{
    orthographic
    location P[15]*12
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
}

polygon{ 5, P[7], P[10], P[18], P[23], P[19]  }



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




