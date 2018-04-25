#include "polyhedra_colors.inc"




#declare RadVert = RadVert * .6;
#declare RadEdge = RadEdge * .4;


//////////////////////////////////////////////////////////////////// SPHERE

sphere{<0, 0, 0>, 3   texture{ TSphere }  }



//////////////////////////////////////////////////////////////////// ARCHIMEDEAN


#declare Factor = 3 / 2.0970538 ;
#declare Abs = array[15]{ (0.1928937)*Factor, (0.330921)*Factor, (0.3748216)*Factor, (0.5677153)*Factor, (0.6430296)*Factor, (0.7283351)*Factor, (0.84755)*Factor, (1.1031568)*Factor, (1.2495037)*Factor, (1.4152654)*Factor, (1.4540242)*Factor, (1.6469179)*Factor, (1.7461864)*Factor, (1.9778389)*Factor, (2.0970538)*Factor, }



#declare NumberOfVertices = 60;
#declare P = array[60]{ <-Abs[14],-Abs[2],-Abs[1]>, <-Abs[14],Abs[2],Abs[1]>, <-Abs[13],-Abs[3],Abs[4]>, <-Abs[13],Abs[3],-Abs[4]>, <-Abs[12],-Abs[0],-Abs[8]>, <-Abs[12],Abs[0],Abs[8]>, <-Abs[11],-Abs[7],-Abs[6]>, <-Abs[11],Abs[7],Abs[6]>, <-Abs[10],-Abs[9],Abs[5]>, <-Abs[10],Abs[9],-Abs[5]>, <-Abs[9],-Abs[5],Abs[10]>, <-Abs[9],Abs[5],-Abs[10]>, <-Abs[8],-Abs[12],-Abs[0]>, <-Abs[8],Abs[12],Abs[0]>, <-Abs[7],-Abs[6],-Abs[11]>, <-Abs[7],Abs[6],Abs[11]>, <-Abs[6],-Abs[11],-Abs[7]>, <-Abs[6],Abs[11],Abs[7]>, <-Abs[5],-Abs[10],Abs[9]>, <-Abs[5],Abs[10],-Abs[9]>, <-Abs[4],-Abs[13],Abs[3]>, <-Abs[4],Abs[13],-Abs[3]>, <-Abs[3],-Abs[4],Abs[13]>, <-Abs[3],Abs[4],-Abs[13]>, <-Abs[2],-Abs[1],-Abs[14]>, <-Abs[2],Abs[1],Abs[14]>, <-Abs[1],-Abs[14],-Abs[2]>, <-Abs[1],Abs[14],Abs[2]>, <-Abs[0],-Abs[8],-Abs[12]>, <-Abs[0],Abs[8],Abs[12]>, <Abs[0],-Abs[8],Abs[12]>, <Abs[0],Abs[8],-Abs[12]>, <Abs[1],-Abs[14],Abs[2]>, <Abs[1],Abs[14],-Abs[2]>, <Abs[2],-Abs[1],Abs[14]>, <Abs[2],Abs[1],-Abs[14]>, <Abs[3],-Abs[4],-Abs[13]>, <Abs[3],Abs[4],Abs[13]>, <Abs[4],-Abs[13],-Abs[3]>, <Abs[4],Abs[13],Abs[3]>, <Abs[5],-Abs[10],-Abs[9]>, <Abs[5],Abs[10],Abs[9]>, <Abs[6],-Abs[11],Abs[7]>, <Abs[6],Abs[11],-Abs[7]>, <Abs[7],-Abs[6],Abs[11]>, <Abs[7],Abs[6],-Abs[11]>, <Abs[8],-Abs[12],Abs[0]>, <Abs[8],Abs[12],-Abs[0]>, <Abs[9],-Abs[5],-Abs[10]>, <Abs[9],Abs[5],Abs[10]>, <Abs[10],-Abs[9],-Abs[5]>, <Abs[10],Abs[9],Abs[5]>, <Abs[11],-Abs[7],Abs[6]>, <Abs[11],Abs[7],-Abs[6]>, <Abs[12],-Abs[0],Abs[8]>, <Abs[12],Abs[0],-Abs[8]>, <Abs[13],-Abs[3],-Abs[4]>, <Abs[13],Abs[3],Abs[4]>, <Abs[14],-Abs[2],Abs[1]>, <Abs[14],Abs[2],-Abs[1]>, }
#declare NumberOfEdges = 150;

#declare NumberOfYellowEdges = 60;
#declare YellowEdges = array[NumberOfYellowEdges]{
    array[2]{1, 2}, array[2]{49, 51}, array[2]{44, 52}, array[2]{55, 59}, array[2]{14, 16}, 
    array[2]{31, 35}, array[2]{29, 37}, array[2]{38, 46}, array[2]{43, 45}, array[2]{13, 21}, 
    array[2]{0, 4}, array[2]{23, 31}, array[2]{41, 51}, array[2]{42, 52}, array[2]{23, 35}, 
    array[2]{25, 29}, array[2]{20, 26}, array[2]{28, 36}, array[2]{7, 17}, array[2]{24, 28}, 
    array[2]{45, 53}, array[2]{40, 50}, array[2]{15, 17}, array[2]{55, 56}, array[2]{12, 20}, 
    array[2]{9, 11}, array[2]{39, 47}, array[2]{43, 53}, array[2]{33, 39}, array[2]{24, 36}, 
    array[2]{1, 5}, array[2]{3, 4}, array[2]{41, 49}, array[2]{8, 18}, array[2]{0, 3}, 
    array[2]{32, 46}, array[2]{11, 19}, array[2]{8, 10}, array[2]{22, 30}, array[2]{30, 34}, 
    array[2]{12, 26}, array[2]{33, 47}, array[2]{25, 37}, array[2]{21, 27}, array[2]{2, 5}, 
    array[2]{22, 34}, array[2]{13, 27}, array[2]{56, 59}, array[2]{7, 15}, array[2]{6, 14}, 
    array[2]{9, 19}, array[2]{10, 18}, array[2]{54, 57}, array[2]{40, 48}, array[2]{32, 38}, 
    array[2]{57, 58}, array[2]{6, 16}, array[2]{54, 58}, array[2]{42, 44}, array[2]{48, 50}
};

#declare NumberOfRedEdges = 60;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{29, 41}, array[2]{39, 41}, array[2]{27, 39}, array[2]{17, 27}, array[2]{17, 29}, 
    array[2]{21, 33}, array[2]{33, 43}, array[2]{31, 43}, array[2]{19, 31}, array[2]{19, 21}, 
    array[2]{11, 23}, array[2]{23, 24}, array[2]{14, 24}, array[2]{4, 14}, array[2]{4, 11}, 
    array[2]{35, 45}, array[2]{45, 55}, array[2]{48, 55}, array[2]{36, 48}, array[2]{35, 36}, 
    array[2]{56, 58}, array[2]{52, 58}, array[2]{46, 52}, array[2]{46, 50}, array[2]{50, 56}, 
    array[2]{53, 59}, array[2]{47, 53}, array[2]{47, 51}, array[2]{51, 57}, array[2]{57, 59}, 
    array[2]{37, 49}, array[2]{34, 37}, array[2]{34, 44}, array[2]{44, 54}, array[2]{49, 54}, 
    array[2]{5, 15}, array[2]{5, 10}, array[2]{10, 22}, array[2]{22, 25}, array[2]{15, 25}, 
    array[2]{9, 13}, array[2]{3, 9}, array[2]{1, 3}, array[2]{1, 7}, array[2]{7, 13}, 
    array[2]{0, 6}, array[2]{6, 12}, array[2]{8, 12}, array[2]{2, 8}, array[2]{0, 2}, 
    array[2]{28, 40}, array[2]{38, 40}, array[2]{26, 38}, array[2]{16, 26}, array[2]{16, 28}, 
    array[2]{20, 32}, array[2]{32, 42}, array[2]{30, 42}, array[2]{18, 30}, array[2]{18, 20}, 
};

#declare NumberOfBlueEdges = 30;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{31, 45}, array[2]{24, 35}, array[2]{53, 55}, array[2]{19, 23}, array[2]{43, 47}, 
    array[2]{36, 40}, array[2]{48, 56}, array[2]{27, 33}, array[2]{14, 28}, array[2]{9, 21}, 
    array[2]{39, 51}, array[2]{58, 59}, array[2]{3, 11}, array[2]{49, 57}, array[2]{37, 41}, 
    array[2]{52, 54}, array[2]{42, 46}, array[2]{30, 44}, array[2]{15, 29}, array[2]{5, 7}, 
    array[2]{25, 34}, array[2]{18, 22}, array[2]{2, 10}, array[2]{13, 17}, array[2]{0, 1}, 
    array[2]{4, 6}, array[2]{12, 16}, array[2]{26, 32}, array[2]{38, 50}, array[2]{8, 20}
};




union{


    union{
        #for(VertexIndex, 0, NumberOfVertices-1)
            sphere{ P[VertexIndex], RadVert }
        #end
        texture{ TBrown }
    }

    union{
        #for(Index, 0, NumberOfBlueEdges-1)
            #local EdgeArray = BlueEdges[Index];
            cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
        #end
        texture{ TBlue }
    }
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

    
    scale -x
    rotate 90*z
    rotate Rotate
}



//////////////////////////////////////////////////////////////////// CATALAN



///////////////////////////// DEFINE

#declare Factor = 3 / 2.0970538;
#declare Abs = array[21]{ (0.0)*Factor, (0.1928937)*Factor, (0.2184833)*Factor, (0.3748216)*Factor, (0.5677153)*Factor, (0.7283351)*Factor, (0.7554672)*Factor, (0.8249575)*Factor, (0.9212288)*Factor, (0.9599877)*Factor, (1.1370661)*Factor, (1.1671234)*Factor, (1.2223717)*Factor, (1.2720962)*Factor, (1.527703)*Factor, (1.6469179)*Factor, (1.7461864)*Factor, (1.8654013)*Factor, (1.8884453)*Factor, (1.9778389)*Factor, (2.0970538)*Factor, }


//////////// define vertices

#declare NumberOfVertices = 92;
#declare P = array[92]{ <-Abs[20],-Abs[1],-Abs[2]>, <-Abs[20],Abs[1],Abs[2]>, <-Abs[19],Abs[0],-Abs[6]>, <-Abs[19],Abs[0],Abs[6]>, <-Abs[18],-Abs[11],Abs[0]>, <-Abs[18],Abs[11],Abs[0]>, <-Abs[17],-Abs[4],Abs[7]>, <-Abs[17],Abs[4],-Abs[7]>, <-Abs[16],-Abs[3],-Abs[10]>, <-Abs[16],Abs[3],Abs[10]>, <-Abs[15],-Abs[8],-Abs[9]>, <-Abs[15],Abs[8],Abs[9]>, <-Abs[14],-Abs[5],Abs[13]>, <-Abs[14],Abs[5],-Abs[13]>, <-Abs[13],-Abs[14],Abs[5]>, <-Abs[13],Abs[14],-Abs[5]>, <-Abs[12],-Abs[12],-Abs[12]>, <-Abs[12],-Abs[12],Abs[12]>, <-Abs[12],Abs[12],-Abs[12]>, <-Abs[12],Abs[12],Abs[12]>, <-Abs[11],Abs[0],-Abs[18]>, <-Abs[11],Abs[0],Abs[18]>, <-Abs[10],-Abs[16],-Abs[3]>, <-Abs[10],Abs[16],Abs[3]>, <-Abs[9],-Abs[15],-Abs[8]>, <-Abs[9],Abs[15],Abs[8]>, <-Abs[8],-Abs[9],-Abs[15]>, <-Abs[8],Abs[9],Abs[15]>, <-Abs[7],-Abs[17],Abs[4]>, <-Abs[7],Abs[17],-Abs[4]>, <-Abs[6],-Abs[19],Abs[0]>, <-Abs[6],Abs[19],Abs[0]>, <-Abs[5],-Abs[13],Abs[14]>, <-Abs[5],Abs[13],-Abs[14]>, <-Abs[4],-Abs[7],Abs[17]>, <-Abs[4],Abs[7],-Abs[17]>, <-Abs[3],-Abs[10],-Abs[16]>, <-Abs[3],Abs[10],Abs[16]>, <-Abs[2],-Abs[20],-Abs[1]>, <-Abs[2],Abs[20],Abs[1]>, <-Abs[1],-Abs[2],-Abs[20]>, <-Abs[1],Abs[2],Abs[20]>, <Abs[0],-Abs[18],-Abs[11]>, <Abs[0],-Abs[18],Abs[11]>, <Abs[0],-Abs[6],-Abs[19]>, <Abs[0],-Abs[6],Abs[19]>, <Abs[0],Abs[6],-Abs[19]>, <Abs[0],Abs[6],Abs[19]>, <Abs[0],Abs[18],-Abs[11]>, <Abs[0],Abs[18],Abs[11]>, <Abs[1],-Abs[2],Abs[20]>, <Abs[1],Abs[2],-Abs[20]>, <Abs[2],-Abs[20],Abs[1]>, <Abs[2],Abs[20],-Abs[1]>, <Abs[3],-Abs[10],Abs[16]>, <Abs[3],Abs[10],-Abs[16]>, <Abs[4],-Abs[7],-Abs[17]>, <Abs[4],Abs[7],Abs[17]>, <Abs[5],-Abs[13],-Abs[14]>, <Abs[5],Abs[13],Abs[14]>, <Abs[6],-Abs[19],Abs[0]>, <Abs[6],Abs[19],Abs[0]>, <Abs[7],-Abs[17],-Abs[4]>, <Abs[7],Abs[17],Abs[4]>, <Abs[8],-Abs[9],Abs[15]>, <Abs[8],Abs[9],-Abs[15]>, <Abs[9],-Abs[15],Abs[8]>, <Abs[9],Abs[15],-Abs[8]>, <Abs[10],-Abs[16],Abs[3]>, <Abs[10],Abs[16],-Abs[3]>, <Abs[11],Abs[0],-Abs[18]>, <Abs[11],Abs[0],Abs[18]>, <Abs[12],-Abs[12],-Abs[12]>, <Abs[12],-Abs[12],Abs[12]>, <Abs[12],Abs[12],-Abs[12]>, <Abs[12],Abs[12],Abs[12]>, <Abs[13],-Abs[14],-Abs[5]>, <Abs[13],Abs[14],Abs[5]>, <Abs[14],-Abs[5],-Abs[13]>, <Abs[14],Abs[5],Abs[13]>, <Abs[15],-Abs[8],Abs[9]>, <Abs[15],Abs[8],-Abs[9]>, <Abs[16],-Abs[3],Abs[10]>, <Abs[16],Abs[3],-Abs[10]>, <Abs[17],-Abs[4],-Abs[7]>, <Abs[17],Abs[4],Abs[7]>, <Abs[18],-Abs[11],Abs[0]>, <Abs[18],Abs[11],Abs[0]>, <Abs[19],Abs[0],-Abs[6]>, <Abs[19],Abs[0],Abs[6]>, <Abs[20],-Abs[1],Abs[2]>, <Abs[20],Abs[1],-Abs[2]>, }

#declare NumberOfRedVertices = 12;
#declare RedVertices = array[NumberOfRedVertices]{
    70, 48, 20, 42, 86, 43, 4, 87, 21, 71, 49, 5
}

#declare NumberOfYellowVertices = 20;
#declare YellowVertices = array[NumberOfYellowVertices]{
    30, 60, 46, 44, 72, 74, 88, 16, 73, 17, 45, 89, 47, 75, 19, 61, 31, 3, 18, 2
}


//////////// define edges

#declare NumberOfYellowEdges = 60;
#declare YellowEdges = array[NumberOfYellowEdges]{
    array[2]{65, 74}, array[2]{14, 17}, array[2]{67, 74}, array[2]{73, 80}, array[2]{37, 47}, 
    array[2]{88, 91}, array[2]{83, 88}, array[2]{34, 45}, array[2]{28, 30}, array[2]{23, 31}, 
    array[2]{72, 78}, array[2]{0, 2}, array[2]{31, 39}, array[2]{52, 60}, array[2]{58, 72}, 
    array[2]{19, 25}, array[2]{85, 89}, array[2]{61, 63}, array[2]{45, 50}, array[2]{60, 68}, 
    array[2]{29, 31}, array[2]{44, 56}, array[2]{82, 89}, array[2]{40, 44}, array[2]{15, 18}, 
    array[2]{75, 77}, array[2]{74, 81}, array[2]{75, 79}, array[2]{46, 55}, array[2]{53, 61}, 
    array[2]{30, 38}, array[2]{16, 26}, array[2]{3, 6}, array[2]{22, 30}, array[2]{89, 90}, 
    array[2]{12, 17}, array[2]{2, 7}, array[2]{3, 9},  array[2]{16, 24}, array[2]{35, 46}, 
    array[2]{60, 62}, array[2]{41, 47}, array[2]{59, 75}, array[2]{36, 44}, array[2]{46, 51}, 
    array[2]{13, 18}, array[2]{72, 76}, array[2]{10, 16}, array[2]{84, 88}, array[2]{47, 57}, 
    array[2]{11, 19}, array[2]{45, 54}, array[2]{66, 73}, array[2]{64, 73}, array[2]{61, 69}, 
    array[2]{17, 32}, array[2]{1, 3}, array[2]{18, 33}, array[2]{19, 27}, array[2]{2, 8}
};

#declare NumberOfRedEdges = 60;
#declare RedEdges = array[NumberOfRedEdges]{
    array[2]{51, 70}, array[2]{70, 83}, array[2]{65, 70}, array[2]{70, 78}, array[2]{56, 70}, 
    array[2]{48, 53}, array[2]{33, 48}, array[2]{48, 67}, array[2]{48, 55}, array[2]{29, 48}, 
    array[2]{20, 35}, array[2]{20, 26}, array[2]{20, 40}, array[2]{13, 20}, array[2]{8, 20}, 
    array[2]{42, 62}, array[2]{36, 42}, array[2]{24, 42}, array[2]{38, 42}, array[2]{42, 58}, 
    array[2]{86, 90}, array[2]{80, 86}, array[2]{76, 86}, array[2]{68, 86}, array[2]{84, 86}, 
    array[2]{43, 52}, array[2]{32, 43}, array[2]{43, 66}, array[2]{43, 54}, array[2]{28, 43}, 
    array[2]{4, 10}, array[2]{4, 6}, array[2]{4, 22}, array[2]{4, 14}, array[2]{0, 4}, 
    array[2]{77, 87}, array[2]{69, 87}, array[2]{81, 87}, array[2]{85, 87}, array[2]{87, 91}, 
    array[2]{21, 34}, array[2]{21, 41}, array[2]{21, 27}, array[2]{12, 21}, array[2]{9, 21}, 
    array[2]{71, 82}, array[2]{64, 71}, array[2]{71, 79}, array[2]{50, 71}, array[2]{57, 71}, 
    array[2]{49, 59}, array[2]{37, 49}, array[2]{25, 49}, array[2]{49, 63}, array[2]{39, 49}, 
    array[2]{5, 7}, array[2]{5, 23}, array[2]{5, 15}, array[2]{5, 11}, array[2]{1, 5}
};

#declare NumberOfBlueEdges = 30;
#declare BlueEdges = array[NumberOfBlueEdges]{
    array[2]{40, 51}, array[2]{55, 65}, array[2]{81, 83}, array[2]{33, 35}, array[2]{78, 84}, 
    array[2]{56, 58}, array[2]{67, 69}, array[2]{15, 29}, array[2]{26, 36}, array[2]{39, 53}, 
    array[2]{7, 13}, array[2]{63, 77}, array[2]{79, 85}, array[2]{90, 91}, array[2]{80, 82}, 
    array[2]{54, 64}, array[2]{57, 59}, array[2]{27, 37},  array[2]{23, 25}, array[2]{9, 11}, 
    array[2]{41, 50}, array[2]{32, 34}, array[2]{6, 12}, array[2]{8, 10}, array[2]{0, 1}, 
    array[2]{62, 76}, array[2]{38, 52}, array[2]{66, 68}, array[2]{22, 24}, array[2]{14, 28}, 
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


    rotate 90*z
    rotate Rotate
}
