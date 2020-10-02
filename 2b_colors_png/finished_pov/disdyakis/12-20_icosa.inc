#declare Factor = 2.58;

#declare Abs = array[3]{ (0)*Factor, (1)*Factor, (1/2 + sqrt(5)/2)*Factor, }

#declare P = array[12]{ <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, }

#declare RedVertices = array[12]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#declare BlueEdges = array[30]{array[2]{2, 4}, array[2]{4, 10}, array[2]{7, 9}, array[2]{7, 11}, array[2]{3, 7}, array[2]{1, 7}, array[2]{2, 8}, array[2]{2, 5}, array[2]{9, 10}, array[2]{4, 8}, array[2]{0, 4}, array[2]{10, 11}, array[2]{5, 7}, array[2]{3, 6}, array[2]{8, 11}, array[2]{8, 10}, array[2]{0, 2}, array[2]{9, 11}, array[2]{0, 1}, array[2]{6, 9}, array[2]{1, 3}, array[2]{5, 8}, array[2]{5, 11}, array[2]{6, 10}, array[2]{4, 6}, array[2]{1, 5}, array[2]{0, 6}, array[2]{0, 3}, array[2]{1, 2}, array[2]{3, 9}};

union{
    #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
        sphere{ P[Index], RadVert }
    #end
    texture{ TRed }
}

union{
    #for( Index, 0, dimension_size(BlueEdges, 1) - 1 )
        #local EdgeArray = BlueEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}

