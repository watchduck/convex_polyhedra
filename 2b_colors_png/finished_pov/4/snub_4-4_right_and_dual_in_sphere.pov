#include "polyhedra_colors.inc"



#declare RadVert = RadVert * .6;
#declare RadEdge = RadEdge * .4;


//////////////////////////////////////////////////////////////////// SPHERE

sphere{ <0, 0, 0>, 3   texture{ TSphere }  }




//////////////////////////////////////////////////////////////////// ARCHIMEDEAN


#declare Factor = 3/(1/2 + sqrt(5)/2);

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare UncoloredVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare BlueEdges = array[6]{array[2]{4, 6}, array[2]{5, 7}, array[2]{3, 9}, array[2]{10, 11}, array[2]{0, 1}, array[2]{2, 8}};

#declare YellowEdges = array[12]{array[2]{9, 10}, array[2]{8, 11}, array[2]{6, 9}, array[2]{6, 10}, array[2]{5, 11}, array[2]{0, 2}, array[2]{3, 7},  array[2]{5, 8}, array[2]{1, 7}, array[2]{1, 3}, array[2]{0, 4}, array[2]{2, 4}};

#declare RedEdges = array[12]{array[2]{0, 3}, array[2]{3, 6}, array[2]{0, 6}, array[2]{4, 10}, array[2]{8, 10}, array[2]{4, 8}, array[2]{1, 2}, array[2]{2, 5}, array[2]{1, 5}, array[2]{7, 9}, array[2]{7, 11}, array[2]{9, 11}};


union{

    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[Index], RadVert }
        #end
        texture{ TBrown }
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
    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }

    rotate 90*x
    scale -x
    rotate Rotate
}



//////////////////////////////////////////////////////////////////// CATALAN


#declare Factor = 3/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4));

#declare Abs = array[4]{ (0)*Factor, (1/(1/2 + sqrt(5)/2))*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare RedVertices = array[4]{3, 4, 14, 17};

#declare YellowVertices = array[4]{2, 5, 15, 16};

#declare UncoloredVertices = array[12]{0, 1, 6, 7, 8, 9, 10, 11, 12, 13, 18, 19};

#declare BlueEdges = array[6]{array[2]{0, 1}, array[2]{10, 11}, array[2]{7, 13}, array[2]{8, 9}, array[2]{6, 12}, array[2]{18, 19}};

#declare YellowEdges = array[12]{array[2]{1, 5}, array[2]{0, 2}, array[2]{9, 15}, array[2]{5, 11}, array[2]{2, 8}, array[2]{13, 15}, array[2]{15, 18}, array[2]{12, 16}, array[2]{2, 6}, array[2]{16, 19}, array[2]{5, 7}, array[2]{10, 16}};

#declare RedEdges = array[12]{array[2]{3, 7}, array[2]{0, 3}, array[2]{3, 9}, array[2]{4, 6}, array[2]{1, 4}, array[2]{4, 10}, array[2]{8, 14}, array[2]{14, 18}, array[2]{12, 14}, array[2]{13, 17}, array[2]{11, 17}, array[2]{17, 19}};


union{

    union{
        #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }
    union{
        #for( Index, 0, dimension_size(UncoloredVertices, 1) - 1 )
            sphere{ P[UncoloredVertices[Index]], RadVert }
        #end
        texture{ TGray }
    }
    union{
        #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
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
    union{
        #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }

    rotate 90*x
    scale -x
    rotate Rotate
}
