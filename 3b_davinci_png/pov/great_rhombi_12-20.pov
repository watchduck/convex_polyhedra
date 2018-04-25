#include "polyhedra_davinci.inc"


/////////////////////////////////// variables

#declare Factor = .915;
#declare Abs = array[12]{ (1/(1/2 + sqrt(5)/2))*Factor, (2/(1/2 + sqrt(5)/2))*Factor, (1/2 + sqrt(5)/2)*Factor, (2)*Factor, (sqrt(5))*Factor, pow(1/2 + sqrt(5)/2, 2)*Factor, (3)*Factor, (1 + sqrt(5))*Factor, (sqrt(5)/2 + 5/2)*Factor, (1/2 + 3*sqrt(5)/2)*Factor, (2 + sqrt(5))*Factor, (sqrt(5)/2 + 7/2)*Factor, }

#declare P = array[120]{ <-Abs[11],-Abs[0],-Abs[0]>, <-Abs[11],-Abs[0],Abs[0]>, <-Abs[11],Abs[0],-Abs[0]>, <-Abs[11],Abs[0],Abs[0]>, <-Abs[10],-Abs[2],-Abs[1]>, <-Abs[10],-Abs[2],Abs[1]>, <-Abs[10],Abs[2],-Abs[1]>, <-Abs[10],Abs[2],Abs[1]>, <-Abs[9],-Abs[5],-Abs[0]>, <-Abs[9],-Abs[5],Abs[0]>, <-Abs[9],Abs[5],-Abs[0]>, <-Abs[9],Abs[5],Abs[0]>, <-Abs[8],-Abs[3],-Abs[4]>, <-Abs[8],-Abs[3],Abs[4]>, <-Abs[8],Abs[3],-Abs[4]>, <-Abs[8],Abs[3],Abs[4]>, <-Abs[7],-Abs[6],-Abs[2]>, <-Abs[7],-Abs[6],Abs[2]>, <-Abs[7],Abs[6],-Abs[2]>, <-Abs[7],Abs[6],Abs[2]>, <-Abs[6],-Abs[2],-Abs[7]>, <-Abs[6],-Abs[2],Abs[7]>, <-Abs[6],Abs[2],-Abs[7]>, <-Abs[6],Abs[2],Abs[7]>, <-Abs[5],-Abs[0],-Abs[9]>, <-Abs[5],-Abs[0],Abs[9]>, <-Abs[5],Abs[0],-Abs[9]>, <-Abs[5],Abs[0],Abs[9]>, <-Abs[4],-Abs[8],-Abs[3]>, <-Abs[4],-Abs[8],Abs[3]>, <-Abs[4],Abs[8],-Abs[3]>, <-Abs[4],Abs[8],Abs[3]>, <-Abs[3],-Abs[4],-Abs[8]>, <-Abs[3],-Abs[4],Abs[8]>, <-Abs[3],Abs[4],-Abs[8]>, <-Abs[3],Abs[4],Abs[8]>, <-Abs[2],-Abs[7],-Abs[6]>, <-Abs[2],-Abs[7],Abs[6]>, <-Abs[2],-Abs[1],-Abs[10]>, <-Abs[2],-Abs[1],Abs[10]>, <-Abs[2],Abs[1],-Abs[10]>, <-Abs[2],Abs[1],Abs[10]>, <-Abs[2],Abs[7],-Abs[6]>, <-Abs[2],Abs[7],Abs[6]>, <-Abs[1],-Abs[10],-Abs[2]>, <-Abs[1],-Abs[10],Abs[2]>, <-Abs[1],Abs[10],-Abs[2]>, <-Abs[1],Abs[10],Abs[2]>, <-Abs[0],-Abs[11],-Abs[0]>, <-Abs[0],-Abs[11],Abs[0]>, <-Abs[0],-Abs[9],-Abs[5]>, <-Abs[0],-Abs[9],Abs[5]>, <-Abs[0],-Abs[0],-Abs[11]>, <-Abs[0],-Abs[0],Abs[11]>, <-Abs[0],Abs[0],-Abs[11]>, <-Abs[0],Abs[0],Abs[11]>, <-Abs[0],Abs[9],-Abs[5]>, <-Abs[0],Abs[9],Abs[5]>, <-Abs[0],Abs[11],-Abs[0]>, <-Abs[0],Abs[11],Abs[0]>, <Abs[0],-Abs[11],-Abs[0]>, <Abs[0],-Abs[11],Abs[0]>, <Abs[0],-Abs[9],-Abs[5]>, <Abs[0],-Abs[9],Abs[5]>, <Abs[0],-Abs[0],-Abs[11]>, <Abs[0],-Abs[0],Abs[11]>, <Abs[0],Abs[0],-Abs[11]>, <Abs[0],Abs[0],Abs[11]>, <Abs[0],Abs[9],-Abs[5]>, <Abs[0],Abs[9],Abs[5]>, <Abs[0],Abs[11],-Abs[0]>, <Abs[0],Abs[11],Abs[0]>, <Abs[1],-Abs[10],-Abs[2]>, <Abs[1],-Abs[10],Abs[2]>, <Abs[1],Abs[10],-Abs[2]>, <Abs[1],Abs[10],Abs[2]>, <Abs[2],-Abs[7],-Abs[6]>, <Abs[2],-Abs[7],Abs[6]>, <Abs[2],-Abs[1],-Abs[10]>, <Abs[2],-Abs[1],Abs[10]>, <Abs[2],Abs[1],-Abs[10]>, <Abs[2],Abs[1],Abs[10]>, <Abs[2],Abs[7],-Abs[6]>, <Abs[2],Abs[7],Abs[6]>, <Abs[3],-Abs[4],-Abs[8]>, <Abs[3],-Abs[4],Abs[8]>, <Abs[3],Abs[4],-Abs[8]>, <Abs[3],Abs[4],Abs[8]>, <Abs[4],-Abs[8],-Abs[3]>, <Abs[4],-Abs[8],Abs[3]>, <Abs[4],Abs[8],-Abs[3]>, <Abs[4],Abs[8],Abs[3]>, <Abs[5],-Abs[0],-Abs[9]>, <Abs[5],-Abs[0],Abs[9]>, <Abs[5],Abs[0],-Abs[9]>, <Abs[5],Abs[0],Abs[9]>, <Abs[6],-Abs[2],-Abs[7]>, <Abs[6],-Abs[2],Abs[7]>, <Abs[6],Abs[2],-Abs[7]>, <Abs[6],Abs[2],Abs[7]>, <Abs[7],-Abs[6],-Abs[2]>, <Abs[7],-Abs[6],Abs[2]>, <Abs[7],Abs[6],-Abs[2]>, <Abs[7],Abs[6],Abs[2]>, <Abs[8],-Abs[3],-Abs[4]>, <Abs[8],-Abs[3],Abs[4]>, <Abs[8],Abs[3],-Abs[4]>, <Abs[8],Abs[3],Abs[4]>, <Abs[9],-Abs[5],-Abs[0]>, <Abs[9],-Abs[5],Abs[0]>, <Abs[9],Abs[5],-Abs[0]>, <Abs[9],Abs[5],Abs[0]>, <Abs[10],-Abs[2],-Abs[1]>, <Abs[10],-Abs[2],Abs[1]>, <Abs[10],Abs[2],-Abs[1]>, <Abs[10],Abs[2],Abs[1]>, <Abs[11],-Abs[0],-Abs[0]>, <Abs[11],-Abs[0],Abs[0]>, <Abs[11],Abs[0],-Abs[0]>, <Abs[11],Abs[0],Abs[0]>, }


#declare UncoloredEdges = array[180]{array[2]{69, 75}, array[2]{11, 19}, array[2]{39, 53}, array[2]{102, 110}, array[2]{56, 68}, array[2]{92, 94}, array[2]{69, 83}, array[2]{38, 52}, array[2]{104, 112}, array[2]{89, 101}, array[2]{82, 86}, array[2]{76, 84}, array[2]{21, 33}, array[2]{111, 115}, array[2]{44, 50}, array[2]{8, 9}, array[2]{83, 87}, array[2]{99, 107}, array[2]{13, 21}, array[2]{91, 103}, array[2]{23, 35}, array[2]{68, 82}, array[2]{88, 100}, array[2]{10, 18}, array[2]{81, 95}, array[2]{34, 40}, array[2]{60, 61}, array[2]{63, 73}, array[2]{14, 18}, array[2]{8, 16}, array[2]{68, 74}, array[2]{48, 60}, array[2]{28, 44}, array[2]{4, 8}, array[2]{27, 41}, array[2]{34, 42}, array[2]{5, 13}, array[2]{116, 117}, array[2]{72, 88}, array[2]{49, 61}, array[2]{100, 104}, array[2]{6, 10}, array[2]{33, 39}, array[2]{101, 109}, array[2]{86, 98}, array[2]{62, 76}, array[2]{23, 27}, array[2]{118, 119}, array[2]{45, 49}, array[2]{29, 45}, array[2]{64, 66}, array[2]{57, 69}, array[2]{3, 7}, array[2]{43, 57}, array[2]{97, 105}, array[2]{114, 118}, array[2]{62, 72}, array[2]{19, 31}, array[2]{55, 67}, array[2]{103, 111}, array[2]{80, 86}, array[2]{30, 42}, array[2]{93, 95}, array[2]{115, 119}, array[2]{46, 58}, array[2]{84, 96}, array[2]{87, 99}, array[2]{76, 88}, array[2]{117, 119}, array[2]{103, 107}, array[2]{61, 73}, array[2]{116, 118}, array[2]{81, 87}, array[2]{65, 67}, array[2]{12, 20}, array[2]{25, 27}, array[2]{77, 85}, array[2]{95, 99}, array[2]{82, 90}, array[2]{31, 43}, array[2]{6, 14}, array[2]{35, 41}, array[2]{59, 71}, array[2]{24, 26}, array[2]{22, 34}, array[2]{35, 43}, array[2]{40, 54}, array[2]{108, 112}, array[2]{26, 40}, array[2]{78, 92}, array[2]{47, 59}, array[2]{110, 114}, array[2]{101, 105}, array[2]{70, 71}, array[2]{17, 29}, array[2]{46, 56}, array[2]{32, 36}, array[2]{2, 6}, array[2]{106, 114}, array[2]{85, 97}, array[2]{12, 16}, array[2]{2, 3}, array[2]{92, 96}, array[2]{78, 84}, array[2]{31, 47}, array[2]{100, 108}, array[2]{66, 80}, array[2]{94, 98}, array[2]{1, 3}, array[2]{58, 59}, array[2]{83, 91}, array[2]{58, 70}, array[2]{4, 12}, array[2]{16, 28}, array[2]{0, 2}, array[2]{7, 11}, array[2]{80, 94}, array[2]{54, 66}, array[2]{93, 97}, array[2]{51, 63}, array[2]{13, 17}, array[2]{30, 46}, array[2]{48, 49}, array[2]{112, 116}, array[2]{22, 26}, array[2]{79, 85}, array[2]{53, 65}, array[2]{53, 55}, array[2]{107, 115}, array[2]{25, 39}, array[2]{20, 24}, array[2]{24, 38}, array[2]{108, 109}, array[2]{15, 19}, array[2]{36, 50}, array[2]{70, 74}, array[2]{41, 55}, array[2]{32, 38}, array[2]{5, 9}, array[2]{102, 106}, array[2]{64, 78}, array[2]{20, 32}, array[2]{45, 51}, array[2]{42, 56}, array[2]{9, 17}, array[2]{29, 37}, array[2]{98, 106}, array[2]{74, 90}, array[2]{18, 30}, array[2]{52, 54}, array[2]{113, 117}, array[2]{14, 22}, array[2]{33, 37}, array[2]{105, 113}, array[2]{110, 111}, array[2]{21, 25}, array[2]{52, 64}, array[2]{60, 72}, array[2]{96, 104}, array[2]{109, 113}, array[2]{67, 81}, array[2]{73, 89}, array[2]{71, 75}, array[2]{0, 1}, array[2]{47, 57}, array[2]{44, 48}, array[2]{79, 93}, array[2]{90, 102}, array[2]{63, 77}, array[2]{37, 51}, array[2]{77, 89}, array[2]{15, 23}, array[2]{65, 79}, array[2]{0, 4}, array[2]{7, 15}, array[2]{50, 62}, array[2]{28, 36}, array[2]{75, 91}, array[2]{10, 11}, array[2]{1, 5}};




/////////////////////////////////// CSG polyhedron

#declare EdgeOffset = 0.23;
#declare FaceOffset = EdgeOffset * 2/3;
#declare PrismThickness = FaceOffset*2 + .1;

#declare FaceNormalPoints = array[62]{<(-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5)), (-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8)>*Factor, <sqrt(5)*(1 + sqrt(5))/2, 0, sqrt(5)>*Factor, <-sqrt(5), -5/2 - sqrt(5)/2, 0>*Factor, <(-1 + sqrt(5))*(sqrt(5)/4 + 5/4), -5/2 - sqrt(5)/2, 0>*Factor, <(-1 + sqrt(5))*(sqrt(5)/4 + 5/4), sqrt(5)/2 + 5/2, 0>*Factor, <(-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <0, (-7/4 - 3*sqrt(5)/4)*(-1 + sqrt(5)), 2*(-2 + sqrt(5))*(-7/4 - 3*sqrt(5)/4)>*Factor, <(-3 + sqrt(5))*(3*sqrt(5)/4 + 7/4), (-sqrt(5) + 3)*(3*sqrt(5)/4 + 7/4), (-3 + sqrt(5))*(3*sqrt(5)/4 + 7/4)>*Factor, <0, (-3*sqrt(5)/4 + 5/4)*(sqrt(5) + 3), 2*(2 + sqrt(5))*(-3*sqrt(5)/4 + 5/4)>*Factor, <4*(-sqrt(5) + 2)*(3*sqrt(5)/8 + 7/8), 0, 2*(-sqrt(5) + 1)*(3*sqrt(5)/8 + 7/8)>*Factor, <0, 2*(-1 + sqrt(5))*(sqrt(5)/8 + 5/8), -5/2 - sqrt(5)/2>*Factor, <-sqrt(5)*(1 + sqrt(5))/2, 0, -sqrt(5)>*Factor, <0, (-3*sqrt(5)/4 + 5/4)*(sqrt(5) + 3), -2*(2 + sqrt(5))*(-3*sqrt(5)/4 + 5/4)>*Factor, <2*sqrt(5)*(1/4 + sqrt(5)/4), 0, (-5 + sqrt(5))*(1/4 + sqrt(5)/4)>*Factor, <0, 0, 2*(-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8)>*Factor, <(-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8), (-3 + sqrt(5))*(5*sqrt(5)/8 + 13/8), 2*(-sqrt(5) + 2)*(5*sqrt(5)/8 + 13/8)>*Factor, <4*(-2 + sqrt(5))*(-7/8 - 3*sqrt(5)/8), 0, 2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <2*(-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 2), 0, (-7/4 - 3*sqrt(5)/4)*(-1 + sqrt(5))>*Factor, <0, 2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 1), 4*(-2 + sqrt(5))*(-7/8 - 3*sqrt(5)/8)>*Factor, <(-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3), (-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3), (-3 + sqrt(5))*(-7/4 - 3*sqrt(5)/4)>*Factor, <0, 2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 1), 4*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 2)>*Factor, <-sqrt(5)*(1 + sqrt(5))/2, 0, sqrt(5)>*Factor, <(-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3), (-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3), (-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3)>*Factor, <0, 2*(-1 + sqrt(5))*(sqrt(5)/8 + 5/8), sqrt(5)/2 + 5/2>*Factor, <(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1), (-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8)>*Factor, <0, 0, 2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3)>*Factor, <2*(-3 + sqrt(5))*(-7/8 - 3*sqrt(5)/8), 2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 3), 2*(-3 + sqrt(5))*(-7/8 - 3*sqrt(5)/8)>*Factor, <(-1 + sqrt(5))*(3*sqrt(5)/4 + 7/4), 2*(-sqrt(5) + 2)*(3*sqrt(5)/4 + 7/4), 0>*Factor, <(-sqrt(5) + 1)*(3*sqrt(5)/4 + 7/4), 2*(-sqrt(5) + 2)*(3*sqrt(5)/4 + 7/4), 0>*Factor, <2*(-sqrt(5) + 3)*(3*sqrt(5)/8 + 7/8), 2*(-3 + sqrt(5))*(3*sqrt(5)/8 + 7/8), 2*(-3 + sqrt(5))*(3*sqrt(5)/8 + 7/8)>*Factor, <2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5)), (-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8)>*Factor, <2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5)), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3)>*Factor, <0, 2*(-1 + sqrt(5))*(-7/8 - 3*sqrt(5)/8), 4*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 2)>*Factor, <(-1 + sqrt(5))*(3*sqrt(5)/4 + 7/4), 2*(-2 + sqrt(5))*(3*sqrt(5)/4 + 7/4), 0>*Factor, <(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3), 2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2)>*Factor, <(-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8), (-3 + sqrt(5))*(5*sqrt(5)/8 + 13/8), 2*(-2 + sqrt(5))*(5*sqrt(5)/8 + 13/8)>*Factor, <0, 2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3), 0>*Factor, <(-3 + sqrt(5))*(-7/4 - 3*sqrt(5)/4), (-3 + sqrt(5))*(-7/4 - 3*sqrt(5)/4), (-7/4 - 3*sqrt(5)/4)*(-sqrt(5) + 3)>*Factor, <2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3), 0, 0>*Factor, <2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3)>*Factor, <(-sqrt(5) + 1)*(sqrt(5)/4 + 5/4), sqrt(5)/2 + 5/2, 0>*Factor, <4*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 2), 0, 2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <3*(-3 + sqrt(5))*(-7/12 - sqrt(5)/4), 3*(-3 + sqrt(5))*(-7/12 - sqrt(5)/4), 3*(-3 + sqrt(5))*(-7/12 - sqrt(5)/4)>*Factor, <(-3 + sqrt(5))*(5*sqrt(5)/8 + 13/8), 2*(-2 + sqrt(5))*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8)>*Factor, <(-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5))>*Factor, <2*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 3), 2*(-3 + sqrt(5))*(-7/8 - 3*sqrt(5)/8), 2*(-3 + sqrt(5))*(-7/8 - 3*sqrt(5)/8)>*Factor, <(-1 + sqrt(5))*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8), 2*(-2 + sqrt(5))*(5*sqrt(5)/8 + 13/8)>*Factor, <2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5)), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3)>*Factor, <2*(-1 + sqrt(5))*(-7/8 - 3*sqrt(5)/8), 4*(-7/8 - 3*sqrt(5)/8)*(-sqrt(5) + 2), 0>*Factor, <2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1), (-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8)>*Factor, <2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-1 + sqrt(5)), (-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8)>*Factor, <2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3)>*Factor, <(-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <0, 2*(-3 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), 0>*Factor, <(-1 + sqrt(5))*(5*sqrt(5)/8 + 13/8), (-3 + sqrt(5))*(5*sqrt(5)/8 + 13/8), 2*(-sqrt(5) + 2)*(5*sqrt(5)/8 + 13/8)>*Factor, <2*(-sqrt(5) + 2)*(5*sqrt(5)/8 + 13/8), (-1 + sqrt(5))*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8)>*Factor, <2*(-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8), 0, 0>*Factor, <(-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8), 2*(-2 + sqrt(5))*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8)>*Factor, <(-3 + sqrt(5))*(5*sqrt(5)/8 + 13/8), 2*(-sqrt(5) + 2)*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8)>*Factor, <(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3), 2*(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 2), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <(-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 3), 2*(-2 + sqrt(5))*(-13/8 - 5*sqrt(5)/8), (-13/8 - 5*sqrt(5)/8)*(-sqrt(5) + 1)>*Factor, <(-sqrt(5) + 1)*(5*sqrt(5)/8 + 13/8), (-sqrt(5) + 3)*(5*sqrt(5)/8 + 13/8), 2*(-2 + sqrt(5))*(5*sqrt(5)/8 + 13/8)>*Factor};
#declare OuterSolid = SolidFromFaceNormalPoints(FaceNormalPoints, 0)
#declare InnerSolid = SolidFromFaceNormalPoints(FaceNormalPoints, FaceOffset)
#declare Hollow = difference{ object{OuterSolid} object{InnerSolid} }
#declare Faces = array[62]{array[5]{P[10], P[18], P[14], P[6], P[10]}, array[11]{P[105], P[97], P[93], P[95], P[99], P[107], P[115], P[119], P[117], P[113], P[105]}, array[11]{P[16], P[8], P[9], P[17], P[29], P[45], P[49], P[48], P[44], P[28], P[16]}, array[11]{P[73], P[89], P[101], P[109], P[108], P[100], P[88], P[72], P[60], P[61], P[73]}, array[11]{P[102], P[110], P[111], P[103], P[91], P[75], P[71], P[70], P[74], P[90], P[102]}, array[5]{P[97], P[93], P[79], P[85], P[97]}, array[7]{P[44], P[50], P[62], P[72], P[60], P[48], P[44]}, array[7]{P[30], P[18], P[14], P[22], P[34], P[42], P[30]}, array[11]{P[84], P[76], P[62], P[50], P[36], P[32], P[38], P[52], P[64], P[78], P[84]}, array[7]{P[52], P[38], P[24], P[26], P[40], P[54], P[52]}, array[11]{P[34], P[40], P[54], P[66], P[80], P[86], P[82], P[68], P[56], P[42], P[34]}, array[11]{P[4], P[0], P[2], P[6], P[14], P[22], P[26], P[24], P[20], P[12], P[4]}, array[11]{P[37], P[51], P[63], P[77], P[85], P[79], P[65], P[53], P[39], P[33], P[37]}, array[11]{P[112], P[104], P[96], P[92], P[94], P[98], P[106], P[114], P[118], P[116], P[112]}, array[5]{P[67], P[65], P[53], P[55], P[67]}, array[5]{P[8], P[4], P[12], P[16], P[8]}, array[7]{P[55], P[41], P[27], P[25], P[39], P[53], P[55]}, array[7]{P[92], P[78], P[64], P[66], P[80], P[94], P[92]}, array[7]{P[68], P[56], P[46], P[58], P[70], P[74], P[68]}, array[7]{P[17], P[13], P[21], P[33], P[37], P[29], P[17]}, array[7]{P[47], P[59], P[71], P[75], P[69], P[57], P[47]}, array[11]{P[5], P[13], P[21], P[25], P[27], P[23], P[15], P[7], P[3], P[1], P[5]}, array[7]{P[36], P[32], P[20], P[12], P[16], P[28], P[36]}, array[11]{P[43], P[57], P[69], P[83], P[87], P[81], P[67], P[55], P[41], P[35], P[43]}, array[5]{P[110], P[114], P[106], P[102], P[110]}, array[5]{P[64], P[52], P[54], P[66], P[64]}, array[7]{P[101], P[89], P[77], P[85], P[97], P[105], P[101]}, array[7]{P[113], P[109], P[108], P[112], P[116], P[117], P[113]}, array[7]{P[1], P[0], P[4], P[8], P[9], P[5], P[1]}, array[7]{P[76], P[88], P[100], P[104], P[96], P[84], P[76]}, array[5]{P[77], P[63], P[73], P[89], P[77]}, array[5]{P[28], P[36], P[50], P[44], P[28]}, array[7]{P[63], P[51], P[45], P[49], P[61], P[73], P[63]}, array[7]{P[118], P[114], P[110], P[111], P[115], P[119], P[118]}, array[5]{P[105], P[101], P[109], P[113], P[105]}, array[5]{P[9], P[5], P[13], P[17], P[9]}, array[5]{P[48], P[60], P[61], P[49], P[48]}, array[7]{P[98], P[86], P[82], P[90], P[102], P[106], P[98]}, array[5]{P[0], P[2], P[3], P[1], P[0]}, array[5]{P[82], P[68], P[74], P[90], P[82]}, array[11]{P[11], P[19], P[31], P[47], P[59], P[58], P[46], P[30], P[18], P[10], P[11]}, array[7]{P[81], P[67], P[65], P[79], P[93], P[95], P[81]}, array[7]{P[103], P[107], P[99], P[87], P[83], P[91], P[103]}, array[5]{P[40], P[34], P[22], P[26], P[40]}, array[5]{P[84], P[78], P[92], P[96], P[84]}, array[7]{P[19], P[15], P[23], P[35], P[43], P[31], P[19]}, array[5]{P[103], P[107], P[115], P[111], P[103]}, array[5]{P[76], P[62], P[72], P[88], P[76]}, array[7]{P[10], P[6], P[2], P[3], P[7], P[11], P[10]}, array[5]{P[69], P[75], P[91], P[83], P[69]}, array[5]{P[37], P[29], P[45], P[51], P[37]}, array[5]{P[30], P[46], P[56], P[42], P[30]}, array[5]{P[99], P[87], P[81], P[95], P[99]}, array[5]{P[59], P[58], P[70], P[71], P[59]}, array[5]{P[100], P[104], P[112], P[108], P[100]}, array[5]{P[31], P[47], P[57], P[43], P[31]}, array[5]{P[119], P[118], P[116], P[117], P[119]}, array[5]{P[86], P[80], P[94], P[98], P[86]}, array[5]{P[38], P[24], P[20], P[32], P[38]}, array[5]{P[23], P[35], P[41], P[27], P[23]}, array[5]{P[25], P[39], P[33], P[21], P[25]}, array[5]{P[19], P[15], P[7], P[11], P[19]}};
#declare PrismUnion = union{
    #for(Index, 0, dimension_size(Faces, 1)-1)
        SolidPrismFromVerticesOfPolygon(Faces[Index], EdgeOffset, PrismThickness)
    #end
}
#declare Davinci = difference{ object{Hollow} object{PrismUnion} }


object{
    Davinci
    texture{ Wood14_with_turbulence }
}


/////////////////////////////////// translucent polyhedron

object{
    SolidFromFaceNormalPoints(FaceNormalPoints, RadFrame)
    pigment{ color TranslucentColor }
}


/////////////////////////////////// polyhedron edges

union{
    #for( Index, 0, dimension_size(P, 1) - 1 )
        sphere{ P[Index], RadEdge }
    #end

    #for( Index, 0, dimension_size(UncoloredEdges, 1) - 1 )
        #local EdgeArray = UncoloredEdges[Index];
        cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
    #end

    pigment{ color EdgeColor }
}


/////////////////////////////////// face frames

union{
    #for(FaceIndex, 0, dimension_size(Faces, 1)-1)
        #declare FacePoints = Faces[FaceIndex];  // closed (last point is the first repeated)
        #declare NumberOfFacePoints = dimension_size(FacePoints, 1);  // actually one more
        #declare FacePointsUnclosed = array[NumberOfFacePoints-1];
        #for(PointIndex, 0, NumberOfFacePoints-2)
            #declare FacePointsUnclosed[PointIndex] = FacePoints[PointIndex];
        #end
        #declare FramePoints = MovePolygonEdges(FacePointsUnclosed, EdgeOffset);
        union{
            #for(PointIndex, 0, NumberOfFacePoints-3)
                cylinder{FramePoints[PointIndex], FramePoints[PointIndex+1], RadFrame }
            #end
            cylinder{FramePoints[NumberOfFacePoints-2], FramePoints[0], RadFrame }
            translate -vnormalize(FaceNormalPoints[FaceIndex]) * (RadFrame + .001)
        }
    #end
    pigment{ color EdgeColor }
}




