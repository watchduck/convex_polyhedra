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

#declare Edges = array[138]{array[2]{38, 46}, array[2]{40, 42}, array[2]{34, 36}, array[2]{37, 47}, array[2]{16, 24}, array[2]{10, 36}, array[2]{30, 38}, array[2]{7, 15}, array[2]{22, 31}, array[2]{5, 21}, array[2]{46, 47}, array[2]{22, 30}, array[2]{21, 23}, array[2]{25, 43}, array[2]{0, 6}, array[2]{41, 43}, array[2]{27, 43}, array[2]{15, 23}, array[2]{1, 3}, array[2]{12, 22}, array[2]{43, 46}, array[2]{36, 46}, array[2]{2, 10}, array[2]{18, 26}, array[2]{2, 4}, array[2]{12, 36}, array[2]{0, 2}, array[2]{42, 43}, array[2]{12, 20}, array[2]{6, 15}, array[2]{3, 13}, array[2]{7, 21}, array[2]{25, 33}, array[2]{0, 1}, array[2]{36, 42}, array[2]{2, 18}, array[2]{29, 35}, array[2]{28, 30}, array[2]{8, 18}, array[2]{28, 36}, array[2]{38, 47}, array[2]{9, 11}, array[2]{19, 27}, array[2]{22, 23}, array[2]{40, 41}, array[2]{34, 42}, array[2]{34, 40}, array[2]{43, 47}, array[2]{3, 5}, array[2]{33, 43}, array[2]{4, 22}, array[2]{8, 16}, array[2]{24, 34}, array[2]{6, 7}, array[2]{11, 35}, array[2]{15, 22}, array[2]{0, 9}, array[2]{16, 33}, array[2]{9, 19}, array[2]{22, 38}, array[2]{27, 35}, array[2]{40, 43}, array[2]{36, 44}, array[2]{31, 39}, array[2]{20, 36}, array[2]{14, 15}, array[2]{17, 19}, array[2]{36, 38}, array[2]{6, 14}, array[2]{37, 43}, array[2]{45, 47}, array[2]{16, 18}, array[2]{30, 36}, array[2]{18, 24}, array[2]{37, 45}, array[2]{17, 33}, array[2]{20, 22}, array[2]{21, 35}, array[2]{21, 29}, array[2]{20, 28}, array[2]{8, 33}, array[2]{1, 9}, array[2]{0, 18}, array[2]{43, 44}, array[2]{24, 33}, array[2]{18, 36}, array[2]{3, 9}, array[2]{32, 34}, array[2]{29, 47}, array[2]{43, 45}, array[2]{2, 6}, array[2]{1, 6}, array[2]{4, 6}, array[2]{23, 31}, array[2]{25, 27}, array[2]{33, 41}, array[2]{3, 11}, array[2]{11, 19}, array[2]{10, 12}, array[2]{32, 40}, array[2]{8, 9}, array[2]{5, 6}, array[2]{5, 7}, array[2]{9, 33}, array[2]{32, 33}, array[2]{21, 31}, array[2]{38, 39}, array[2]{19, 35}, array[2]{11, 13}, array[2]{15, 21}, array[2]{9, 17}, array[2]{24, 26}, array[2]{2, 12}, array[2]{26, 36}, array[2]{39, 47}, array[2]{17, 25}, array[2]{13, 21}, array[2]{35, 37}, array[2]{4, 12}, array[2]{44, 46}, array[2]{29, 37}, array[2]{13, 35}, array[2]{24, 32}, array[2]{26, 34}, array[2]{0, 8}, array[2]{3, 6}, array[2]{35, 43}, array[2]{10, 18}, array[2]{6, 22}, array[2]{31, 47}, array[2]{33, 40}, array[2]{5, 13}, array[2]{22, 28}, array[2]{42, 44}, array[2]{19, 25}, array[2]{22, 39}, array[2]{29, 31}, array[2]{14, 22}};

#declare Faces = array[92]{array[4]{13, 3, 11, 13}, array[4]{13, 3, 5, 13}, array[4]{18, 2, 10, 18}, array[4]{18, 2, 0, 18}, array[4]{18, 8, 16, 18}, array[4]{18, 8, 0, 18}, array[4]{6, 1, 0, 6}, array[4]{6, 3, 1, 6}, array[4]{6, 2, 4, 6}, array[4]{6, 2, 0, 6}, array[4]{6, 7, 5, 6}, array[4]{6, 3, 5, 6}, array[4]{15, 6, 7, 15}, array[4]{15, 6, 14, 15}, array[4]{9, 19, 17, 9}, array[4]{9, 3, 1, 9}, array[4]{9, 3, 11, 9}, array[4]{9, 19, 11, 9}, array[4]{9, 1, 0, 9}, array[4]{9, 8, 0, 9}, array[4]{24, 18, 16, 24}, array[4]{24, 18, 26, 24}, array[4]{25, 19, 27, 25}, array[4]{25, 19, 17, 25}, array[4]{47, 37, 29, 47}, array[4]{47, 37, 45, 47}, array[4]{47, 31, 29, 47}, array[4]{47, 31, 39, 47}, array[4]{21, 7, 5, 21}, array[4]{21, 13, 5, 21}, array[4]{21, 15, 7, 21}, array[4]{21, 15, 23, 21}, array[4]{21, 31, 23, 21}, array[4]{21, 31, 29, 21}, array[4]{12, 2, 4, 12}, array[4]{12, 2, 10, 12}, array[4]{35, 19, 27, 35}, array[4]{35, 19, 11, 35}, array[4]{35, 21, 13, 35}, array[4]{35, 13, 11, 35}, array[4]{35, 37, 29, 35}, array[4]{35, 21, 29, 35}, array[4]{33, 8, 16, 33}, array[4]{33, 9, 8, 33}, array[4]{33, 24, 32, 33}, array[4]{33, 9, 17, 33}, array[4]{33, 24, 16, 33}, array[4]{33, 25, 17, 33}, array[4]{33, 41, 40, 33}, array[4]{33, 32, 40, 33}, array[4]{38, 47, 46, 38}, array[4]{38, 47, 39, 38}, array[4]{22, 6, 4, 22}, array[4]{22, 12, 4, 22}, array[4]{22, 6, 14, 22}, array[4]{22, 12, 20, 22}, array[4]{22, 15, 23, 22}, array[4]{22, 31, 39, 22}, array[4]{22, 15, 14, 22}, array[4]{22, 31, 23, 22}, array[4]{22, 38, 30, 22}, array[4]{22, 38, 39, 22}, array[4]{22, 20, 28, 22}, array[4]{22, 30, 28, 22}, array[4]{34, 24, 26, 34}, array[4]{34, 32, 40, 34}, array[4]{34, 42, 40, 34}, array[4]{34, 24, 32, 34}, array[4]{43, 41, 40, 43}, array[4]{43, 44, 42, 43}, array[4]{43, 47, 45, 43}, array[4]{43, 42, 40, 43}, array[4]{43, 47, 46, 43}, array[4]{43, 44, 46, 43}, array[4]{43, 25, 27, 43}, array[4]{43, 35, 27, 43}, array[4]{43, 33, 41, 43}, array[4]{43, 33, 25, 43}, array[4]{43, 37, 45, 43}, array[4]{43, 35, 37, 43}, array[4]{36, 44, 46, 36}, array[4]{36, 38, 46, 36}, array[4]{36, 30, 28, 36}, array[4]{36, 38, 30, 36}, array[4]{36, 12, 20, 36}, array[4]{36, 18, 10, 36}, array[4]{36, 18, 26, 36}, array[4]{36, 20, 28, 36}, array[4]{36, 12, 10, 36}, array[4]{36, 34, 26, 36}, array[4]{36, 44, 42, 36}, array[4]{36, 34, 42, 36}};

union{
    #for( Index, 0, 47 )
        sphere{ P[Index], .15 }
    #end
}

union{
    #for( Index, 0, 137 )
        #local EdgeArray = Edges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], 0.05 }
    #end
    pigment{ color Orange }
}

union{
    #for( Index, 0, 91 )
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
