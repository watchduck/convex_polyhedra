#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"


///////////////////////////// camera

#declare Camera_Position = <13.2, 10.5, -45>;
camera{
    location Camera_Position
    right    x*image_width/image_height
    angle    12
    look_at  <0, 0, 0>
}


///////////////////////////// light

light_source{ <-400, 500, -300> color White*0.9 shadowless}
light_source{ <400, 200, 100> color White*0.4 shadowless}
light_source{ Camera_Position  color rgb<0.9,0.9,1>*0.2 shadowless}

sky_sphere{ pigment{ White } }  


///////////////////////////// drawing

#declare Factor = 1;
#declare Abs = array[3]{ (1)*Factor, (1 + sqrt(2))*Factor, (1 + 2*sqrt(2))*Factor, }
#declare P = array[48]{ <-Abs[2],-Abs[1],-Abs[0]>, <-Abs[2],-Abs[1],Abs[0]>, <-Abs[2],-Abs[0],-Abs[1]>, <-Abs[2],-Abs[0],Abs[1]>, <-Abs[2],Abs[0],-Abs[1]>, <-Abs[2],Abs[0],Abs[1]>, <-Abs[2],Abs[1],-Abs[0]>, <-Abs[2],Abs[1],Abs[0]>, <-Abs[1],-Abs[2],-Abs[0]>, <-Abs[1],-Abs[2],Abs[0]>, <-Abs[1],-Abs[0],-Abs[2]>, <-Abs[1],-Abs[0],Abs[2]>, <-Abs[1],Abs[0],-Abs[2]>, <-Abs[1],Abs[0],Abs[2]>, <-Abs[1],Abs[2],-Abs[0]>, <-Abs[1],Abs[2],Abs[0]>, <-Abs[0],-Abs[2],-Abs[1]>, <-Abs[0],-Abs[2],Abs[1]>, <-Abs[0],-Abs[1],-Abs[2]>, <-Abs[0],-Abs[1],Abs[2]>, <-Abs[0],Abs[1],-Abs[2]>, <-Abs[0],Abs[1],Abs[2]>, <-Abs[0],Abs[2],-Abs[1]>, <-Abs[0],Abs[2],Abs[1]>, <Abs[0],-Abs[2],-Abs[1]>, <Abs[0],-Abs[2],Abs[1]>, <Abs[0],-Abs[1],-Abs[2]>, <Abs[0],-Abs[1],Abs[2]>, <Abs[0],Abs[1],-Abs[2]>, <Abs[0],Abs[1],Abs[2]>, <Abs[0],Abs[2],-Abs[1]>, <Abs[0],Abs[2],Abs[1]>, <Abs[1],-Abs[2],-Abs[0]>, <Abs[1],-Abs[2],Abs[0]>, <Abs[1],-Abs[0],-Abs[2]>, <Abs[1],-Abs[0],Abs[2]>, <Abs[1],Abs[0],-Abs[2]>, <Abs[1],Abs[0],Abs[2]>, <Abs[1],Abs[2],-Abs[0]>, <Abs[1],Abs[2],Abs[0]>, <Abs[2],-Abs[1],-Abs[0]>, <Abs[2],-Abs[1],Abs[0]>, <Abs[2],-Abs[0],-Abs[1]>, <Abs[2],-Abs[0],Abs[1]>, <Abs[2],Abs[0],-Abs[1]>, <Abs[2],Abs[0],Abs[1]>, <Abs[2],Abs[1],-Abs[0]>, <Abs[2],Abs[1],Abs[0]>, }

#declare Edges = array[72]{array[2]{15, 23}, array[2]{42, 44}, array[2]{29, 31}, array[2]{25, 33}, array[2]{5, 13}, array[2]{22, 30}, array[2]{2, 10}, array[2]{16, 18}, array[2]{10, 12}, array[2]{12, 20}, array[2]{0, 1}, array[2]{34, 36}, array[2]{9, 17}, array[2]{10, 18}, array[2]{20, 22}, array[2]{2, 4}, array[2]{17, 25}, array[2]{38, 39}, array[2]{11, 13}, array[2]{8, 9}, array[2]{5, 7}, array[2]{17, 19}, array[2]{7, 15}, array[2]{46, 47}, array[2]{37, 45}, array[2]{24, 32}, array[2]{28, 36}, array[2]{14, 22}, array[2]{28, 30}, array[2]{25, 27}, array[2]{44, 46}, array[2]{14, 15}, array[2]{11, 19}, array[2]{41, 43}, array[2]{6, 14}, array[2]{29, 37}, array[2]{26, 34}, array[2]{1, 9}, array[2]{0, 2}, array[2]{35, 43}, array[2]{40, 41}, array[2]{21, 23}, array[2]{13, 21}, array[2]{0, 8}, array[2]{40, 42}, array[2]{23, 31}, array[2]{36, 44}, array[2]{8, 16}, array[2]{38, 46}, array[2]{21, 29}, array[2]{3, 11}, array[2]{45, 47}, array[2]{34, 42}, array[2]{18, 26}, array[2]{39, 47}, array[2]{16, 24}, array[2]{33, 41}, array[2]{20, 28}, array[2]{43, 45}, array[2]{3, 5}, array[2]{6, 7}, array[2]{4, 12}, array[2]{1, 3}, array[2]{31, 39}, array[2]{4, 6}, array[2]{24, 26}, array[2]{30, 38}, array[2]{19, 27}, array[2]{32, 40}, array[2]{35, 37}, array[2]{27, 35}, array[2]{32, 33}};

#declare Faces = array[26]{array[7]{17, 19, 11, 3, 1, 9, 17}, array[9]{25, 17, 9, 8, 16, 24, 32, 33, 25}, array[9]{40, 41, 43, 45, 47, 46, 44, 42, 40}, array[9]{23, 15, 14, 22, 30, 38, 39, 31, 23}, array[7]{23, 15, 7, 5, 13, 21, 23}, array[5]{2, 10, 12, 4, 2}, array[7]{39, 47, 45, 37, 29, 31, 39}, array[9]{36, 34, 26, 18, 10, 12, 20, 28, 36}, array[7]{18, 16, 8, 0, 2, 10, 18}, array[7]{32, 40, 42, 34, 26, 24, 32}, array[7]{38, 30, 28, 36, 44, 46, 38}, array[7]{33, 25, 27, 35, 43, 41, 33}, array[7]{22, 14, 6, 4, 12, 20, 22}, array[5]{38, 46, 47, 39, 38}, array[5]{8, 0, 1, 9, 8}, array[9]{6, 7, 5, 3, 1, 0, 2, 4, 6}, array[9]{37, 29, 21, 13, 11, 19, 27, 35, 37}, array[5]{14, 15, 7, 6, 14}, array[5]{40, 32, 33, 41, 40}, array[5]{26, 18, 16, 24, 26}, array[5]{11, 3, 5, 13, 11}, array[5]{43, 35, 37, 45, 43}, array[5]{44, 42, 34, 36, 44}, array[5]{28, 30, 22, 20, 28}, array[5]{23, 21, 29, 31, 23}, array[5]{19, 27, 25, 17, 19}};


union{
    #for( Index, 0, 47 )
        sphere{ P[Index], .15 }
    #end
}

union{
    #for( Index, 0, 71 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], 0.05 }
    #end
    pigment{ color Orange }
}

union{
    #for( Index, 0, 25 )
        #local FaceArray = Faces[Index];
        #local LenOfFaceArray = dimension_size(FaceArray, 1);
        polygon{ LenOfFaceArray,
            #for(VertexIndexInFace, 0, LenOfFaceArray-1)
                P[FaceArray[VertexIndexInFace]]
            #end
        }
    #end
    pigment{ color rgbt<1, 1, 1, .5> }
}
