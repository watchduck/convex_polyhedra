#declare Factor = 2.3094;

#declare Abs = array[1]{ (1)*Factor, }
#declare NumberOfVertices = 8;
#declare P = array[8]{ <-Abs[0],-Abs[0],-Abs[0]>, <-Abs[0],-Abs[0],Abs[0]>, <-Abs[0],Abs[0],-Abs[0]>, <-Abs[0],Abs[0],Abs[0]>, <Abs[0],-Abs[0],-Abs[0]>, <Abs[0],-Abs[0],Abs[0]>, <Abs[0],Abs[0],-Abs[0]>, <Abs[0],Abs[0],Abs[0]>, }

#declare RedVertices = array[4]{1, 2, 4, 7};

#declare YellowVertices = array[4]{0, 3, 5, 6};

#declare UncoloredEdges = array[12]{array[2]{1, 3}, array[2]{4, 6}, array[2]{2, 3}, array[2]{5, 7}, array[2]{3, 7}, array[2]{0, 4}, array[2]{2, 6}, array[2]{0, 1}, array[2]{0, 2}, array[2]{4, 5}, array[2]{6, 7}, array[2]{1, 5}};

union{
    #for( Index, 0, dimension_size(RedVertices, 1) - 1 )
        sphere{ P[RedVertices[Index]], RadVert }
    #end
    texture{ TRed }
}
union{
    #for( Index, 0, dimension_size(YellowVertices, 1) - 1 )
        sphere{ P[YellowVertices[Index]], RadVert }
    #end
    texture{ TYellow }
}

union{
    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end
    texture{ TGray }
}


