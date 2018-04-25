#include "polyhedra_colors.inc"





#declare Factor = 3.05;


#declare Abs = array[5]{ (0.0)*Factor, (0.2187966)*Factor, (0.7401837)*Factor, (1.0236561)*Factor, (1.3614101)*Factor, }


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


#declare NumberOfTriangles = 72;
#declare Triangles = array[NumberOfTriangles]{array[4]{9, 11, 19, 9}, array[4]{35, 31, 37, 35}, array[4]{16, 11, 20, 16}, array[4]{16, 31, 20, 16}, array[4]{3, 10, 0, 3}, array[4]{4, 11, 0, 4}, array[4]{4, 10, 0, 4}, array[4]{34, 30, 37, 34}, array[4]{36, 31, 37, 36}, array[4]{36, 30, 37, 36}, array[4]{24, 10, 20, 24}, array[4]{24, 30, 20, 24}, array[4]{7, 9, 19, 7}, array[4]{27, 35, 37, 27}, array[4]{23, 31, 19, 23}, array[4]{23, 16, 31, 23}, array[4]{23, 11, 19, 23}, array[4]{23, 16, 11, 23}, array[4]{6, 3, 0, 6}, array[4]{12, 10, 20, 12}, array[4]{12, 4, 10, 12}, array[4]{12, 11, 20, 12}, array[4]{12, 4, 11, 12}, array[4]{29, 30, 18, 29}, array[4]{29, 34, 30, 29}, array[4]{33, 27, 37, 33}, array[4]{22, 6, 18, 22}, array[4]{32, 31, 20, 32}, array[4]{32, 36, 31, 32}, array[4]{32, 30, 20, 32}, array[4]{32, 36, 30, 32}, array[4]{15, 30, 18, 15}, array[4]{15, 24, 30, 15}, array[4]{15, 10, 18, 15}, array[4]{15, 24, 10, 15}, array[4]{2, 7, 0, 2}, array[4]{2, 7, 9, 2}, array[4]{2, 11, 0, 2}, array[4]{2, 9, 11, 2}, array[4]{28, 27, 19, 28}, array[4]{28, 27, 35, 28}, array[4]{28, 31, 19, 28}, array[4]{28, 35, 31, 28}, array[4]{14, 7, 19, 14}, array[4]{14, 27, 19, 14}, array[4]{8, 6, 18, 8}, array[4]{8, 6, 3, 8}, array[4]{8, 10, 18, 8}, array[4]{8, 3, 10, 8}, array[4]{1, 7, 0, 1}, array[4]{1, 6, 0, 1}, array[4]{26, 22, 18, 26}, array[4]{26, 29, 18, 26}, array[4]{26, 29, 34, 26}, array[4]{26, 34, 37, 26}, array[4]{26, 33, 37, 26}, array[4]{13, 6, 17, 13}, array[4]{13, 22, 6, 13}, array[4]{13, 26, 17, 13}, array[4]{13, 26, 22, 13}, array[4]{21, 27, 17, 21}, array[4]{21, 14, 27, 21}, array[4]{21, 7, 17, 21}, array[4]{21, 14, 7, 21}, array[4]{5, 6, 17, 5}, array[4]{5, 1, 6, 5}, array[4]{5, 7, 17, 5}, array[4]{5, 1, 7, 5}, array[4]{25, 26, 17, 25}, array[4]{25, 26, 33, 25}, array[4]{25, 27, 17, 25}, array[4]{25, 33, 27, 25}};




union{


    // gray spheres in all vertices, red and yellow ones slightly bigger
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


    // edges

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


    // faces

    union{
        #for(Index, 0, NumberOfTriangles-1)
            #local FaceArray = Triangles[Index];
            polygon{ 4,
                #for(VertexIndexInFace, 0, 3)
                    P[FaceArray[VertexIndexInFace]]
                #end
            }
        #end
        texture{ TBrown }
    }


    scale -x
    rotate Rotate
}
