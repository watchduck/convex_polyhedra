#include "polyhedra_colors.inc"



#declare RadVert = RadVert * .6;
#declare RadEdge = RadEdge * .4;


//////////////////////////////////////////////////////////////////// SPHERE

sphere{<0, 0, 0>, 3   texture{ TSphere }  }




//////////////////////////////////////////////////////////////////// ARCHIMEDEAN


///////////////////////////// DEFINE

#declare Factor = 3 / (1.60972 * 1.2472231);
#declare Abs = array[3]{ (0.54369)*Factor, (1)*Factor, (1.83929)*Factor, }


//////////// define vertices

#declare NumberOfVertices = 24;
#declare P = array[24]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, }


//////////// define edges

#declare NumberOfYellowEdges = 24;
#declare YellowEdges = array[NumberOfYellowEdges]{array[2]{14, 22}, array[2]{7, 10}, array[2]{13, 21}, array[2]{0, 8}, array[2]{12, 20}, array[2]{6, 11}, array[2]{13, 16}, array[2]{19, 22}, array[2]{14, 19}, array[2]{0, 5}, array[2]{1, 4}, array[2]{2, 10}, array[2]{18, 23}, array[2]{3, 6}, array[2]{3, 11}, array[2]{16, 21}, array[2]{17, 20}, array[2]{12, 17}, array[2]{15, 23}, array[2]{4, 9}, array[2]{2, 7}, array[2]{1, 9}, array[2]{15, 18}, array[2]{5, 8}};

#declare NumberOfRedEdges = 24;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{10, 18}, array[2]{13, 18}, array[2]{5, 13}, array[2]{5, 10}, 
    array[2]{7, 11}, array[2]{11, 19}, array[2]{15, 19}, array[2]{7, 15}, 
    array[2]{21, 23}, array[2]{22, 23}, array[2]{20, 22}, array[2]{20, 21}, 
    array[2]{6, 14}, array[2]{6, 9}, array[2]{9, 17}, array[2]{14, 17}, 
    array[2]{0, 1}, array[2]{1, 3}, array[2]{2, 3}, array[2]{0, 2}, 
    array[2]{4, 8}, array[2]{4, 12}, array[2]{12, 16}, array[2]{8, 16}
};

#declare NumberOfBlueEdges = 12;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{10, 15}, array[2]{19, 23}, array[2]{18, 21}, array[2]{2, 5}, array[2]{8, 13}, array[2]{11, 14}, 
    array[2]{1, 6}, array[2]{17, 22}, array[2]{9, 12}, array[2]{0, 4}, array[2]{3, 7}, array[2]{16, 20}, 
};


///////////////////////////// PUT


union{

    //////////// put vertices

    union{
        #for(VertexIndex, 0, NumberOfVertices-1)
            sphere{ P[VertexIndex], RadVert }
        #end
        texture{ TBrown }
    }


    //////////// put edges

    union{
        #for(Index, 0, NumberOfYellowEdges-1)
            #local EdgeArray = YellowEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TYellowish }
    }

    union{
        #for(Index, 0, NumberOfBlueEdges-1)
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }

    union{
        #for(Index, 0, NumberOfRedEdges-1)
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TReddish }
    }

    scale -x
}



//////////////////////////////////////////////////////////////////// CATALAN


///////////////////////////// DEFINE

#declare Factor = 3 / 1.2472231;
#declare Abs = array[5]{ (0.0)*Factor, (0.2187966)*Factor, (0.7401837)*Factor, (1.0236561)*Factor, (1.3614101)*Factor, }


//////////// define vertices

#declare NumberOfVertices = 38;
#declare P = array[38]{ <-Abs[4],Abs[0],Abs[0]>, <-Abs[3],-Abs[2],-Abs[1]>, <-Abs[3],-Abs[1],Abs[2]>, <-Abs[3],Abs[1],-Abs[2]>, <-Abs[3],Abs[2],Abs[1]>, <-Abs[2],-Abs[3],Abs[1]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],-Abs[1],-Abs[3]>, <-Abs[2],Abs[1],Abs[3]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[2],Abs[3],-Abs[1]>, <-Abs[1],-Abs[3],-Abs[2]>, <-Abs[1],-Abs[2],Abs[3]>, <-Abs[1],Abs[2],-Abs[3]>, <-Abs[1],Abs[3],Abs[2]>, <Abs[0],-Abs[4],Abs[0]>, <Abs[0],Abs[0],-Abs[4]>, <Abs[0],Abs[0],Abs[4]>, <Abs[0],Abs[4],Abs[0]>, <Abs[1],-Abs[3],Abs[2]>, <Abs[1],-Abs[2],-Abs[3]>, <Abs[1],Abs[2],Abs[3]>, <Abs[1],Abs[3],-Abs[2]>, <Abs[2],-Abs[3],-Abs[1]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],-Abs[1],Abs[3]>, <Abs[2],Abs[1],-Abs[3]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[2],Abs[3],Abs[1]>, <Abs[3],-Abs[2],Abs[1]>, <Abs[3],-Abs[1],-Abs[2]>, <Abs[3],Abs[1],Abs[2]>, <Abs[3],Abs[2],-Abs[1]>, <Abs[4],Abs[0],Abs[0]>, }

#declare NumberOfRedVertices = 6;
#declare RedVertices = array[NumberOfRedVertices]{
    18, 37, 19, 20, 17, 0
}

#declare NumberOfYellowVertices = 8;
#declare YellowVertices = array[NumberOfYellowVertices]{
    30, 26, 31, 27, 11, 7, 10, 6
}


//////////// define edges

#declare NumberOfYellowEdges = 24;
#declare YellowEdges = array[NumberOfYellowEdges]{
    array[2]{24, 30}, array[2]{6, 13}, array[2]{7, 14}, array[2]{1, 6}, array[2]{10, 15}, array[2]{23, 31},
    array[2]{27, 28}, array[2]{21, 27}, array[2]{3, 10}, array[2]{25, 26}, array[2]{29, 30}, array[2]{26, 34},
    array[2]{22, 26}, array[2]{2, 7}, array[2]{31, 35}, array[2]{5, 7}, array[2]{9, 11}, array[2]{30, 36},
    array[2]{10, 12}, array[2]{11, 16}, array[2]{27, 33}, array[2]{31, 32}, array[2]{4, 11}, array[2]{6, 8}
};

#declare NumberOfRedEdges = 24;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{8, 18}, array[2]{15, 18}, array[2]{18, 22}, array[2]{18, 29}, 
    array[2]{33, 37}, array[2]{36, 37}, array[2]{35, 37}, array[2]{34, 37}, 
    array[2]{19, 28}, array[2]{14, 19}, array[2]{19, 23}, array[2]{9, 19}, 
    array[2]{20, 24}, array[2]{20, 32}, array[2]{16, 20}, array[2]{12, 20}
    array[2]{5, 17}, array[2]{17, 21}, array[2]{17, 25}, array[2]{13, 17}, 
    array[2]{0, 3}, array[2]{0, 2}, array[2]{0, 4}, array[2]{0, 1}
};

#declare NumberOfBlueEdges = 12;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{4, 12}, array[2]{3, 8}, array[2]{1, 5}, array[2]{2, 9},  array[2]{15, 24}, array[2]{32, 36}, 
    array[2]{29, 34}, array[2]{13, 22}, array[2]{28, 35}, array[2]{25, 33}, array[2]{16, 23}, array[2]{14, 21}
};


///////////////////////////// PUT


union{

    //////////// put vertices (gray spheres in all vertices, red and yellow ones slightly bigger)

    union{
        #for(Index, 0, NumberOfVertices-1)
            sphere{ P[Index], RadVert*.99 }
        #end
        texture{ TLightgray }
    }

    union{
        #for(Index, 0, NumberOfRedVertices-1)
            sphere{ P[RedVertices[Index]], RadVert }
        #end
        texture{ TRed }
    }

    union{
        #for(Index, 0, NumberOfYellowVertices-1)
            sphere{ P[YellowVertices[Index]], RadVert }
        #end
        texture{ TYellow }
    }


    //////////// put edges

    union{
        #for(Index, 0, NumberOfYellowEdges-1)
            #local EdgeArray = YellowEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TYellowish }
    }

    union{
        #for(Index, 0, NumberOfRedEdges-1)
            #local EdgeArray = RedEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TReddish }
    }

    union{
        #for(Index, 0, NumberOfBlueEdges-1)
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }

}

