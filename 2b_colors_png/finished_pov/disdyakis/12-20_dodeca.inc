#declare Factor = 2.58;

#declare Abs = array[4]{ 0, (1/(1/2 + sqrt(5)/2))*Factor, Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[20]{ <-Abs[3],-Abs[1],Abs[0]>, <-Abs[3],Abs[1],Abs[0]>, <-Abs[2],-Abs[2],-Abs[2]>, <-Abs[2],-Abs[2],Abs[2]>, <-Abs[2],Abs[2],-Abs[2]>, <-Abs[2],Abs[2],Abs[2]>, <-Abs[1],Abs[0],-Abs[3]>, <-Abs[1],Abs[0],Abs[3]>, <Abs[0],-Abs[3],-Abs[1]>, <Abs[0],-Abs[3],Abs[1]>, <Abs[0],Abs[3],-Abs[1]>, <Abs[0],Abs[3],Abs[1]>, <Abs[1],Abs[0],-Abs[3]>, <Abs[1],Abs[0],Abs[3]>, <Abs[2],-Abs[2],-Abs[2]>, <Abs[2],-Abs[2],Abs[2]>, <Abs[2],Abs[2],-Abs[2]>, <Abs[2],Abs[2],Abs[2]>, <Abs[3],-Abs[1],Abs[0]>, <Abs[3],Abs[1],Abs[0]>, }

#declare YellowVertices = array[20]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};

#declare BlueEdges = array[30]{array[2]{4, 10}, array[2]{12, 16}, array[2]{3, 7}, array[2]{2, 8}, array[2]{7, 13}, array[2]{2, 6}, array[2]{17, 19}, array[2]{13, 17}, array[2]{8, 14}, array[2]{13, 15}, array[2]{18, 19}, array[2]{12, 14}, array[2]{9, 15}, array[2]{8, 9}, array[2]{15, 18}, array[2]{10, 11}, array[2]{10, 16}, array[2]{5, 7}, array[2]{1, 5}, array[2]{0, 2}, array[2]{11, 17}, array[2]{6, 12}, array[2]{0, 1}, array[2]{16, 19}, array[2]{5, 11}, array[2]{4, 6}, array[2]{1, 4}, array[2]{0, 3}, array[2]{14, 18}, array[2]{3, 9}};

union{
    #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
        sphere{ P[Index], RadVert }
    #end
    texture{ TYellow }
}

union{
    #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
        #local EdgeArray = BlueEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}

