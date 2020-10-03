#declare Factor = 2.3094;

#declare Abs = array[1]{ (1)*Factor, }

#declare P = array[4]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, }

#declare YellowVertices = array[4]{0, 1, 2, 3};

#declare BlueEdges = array[6]{array[2]{0, 2}, array[2]{1, 3}, array[2]{1, 2}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 3}};

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
