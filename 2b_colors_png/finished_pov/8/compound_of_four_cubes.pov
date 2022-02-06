// https://commons.wikimedia.org/wiki/Category:Extended_compound_of_four_cubes_(rgby_and_gray)

#version 3.6;
global_settings { assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 conserve_energy}}

#include "colors.inc"
#include "math.inc"
#include "textures.inc"
#include "RotMatFromVectorAndAngle.inc"
#include "RotateDirOnDir.inc"

///////////////////////////// camera and light

#declare Camera_Position = <13.2, 10.5, -45>;              // view from up right (perspective)

//#declare Camera_Position = vnormalize(<0, 0, -1>) * 42;    // view from front (orthographic)

camera{
    //orthographic
    location Camera_Position
    right    x*image_width/image_height
    angle    10.45
    look_at  <0, 0, 0>
}

light_source{ <-400, 500, -300> color White*0.9 shadowless}
light_source{ <400, 200, 100> color White*0.4 shadowless}
light_source{ Camera_Position  color rgb<0.9,0.9,1>*0.2 shadowless}
sky_sphere{ pigment{ White } }


///////////////////////////// sizes

#declare RadVert = .12;
#declare RadEdge = .045;

// variables defining the cube

#declare F = 3.6/((-1 + sqrt(5))*(sqrt(5)/4 + 3/4));  // factor

#declare P = array[8]{ <-F,-F,-F>, <-F,-F,F>, <-F,F,-F>, <-F,F,F>, <F,-F,-F>, <F,-F,F>, <F,F,-F>, <F,F,F> }  // points

#declare EdgeArrays = array[12]{array[2]{6, 7}, array[2]{1, 5}, array[2]{1, 3}, array[2]{4, 5}, array[2]{0, 1}, array[2]{2, 3}, array[2]{0, 4}, array[2]{4, 6}, array[2]{0, 2}, array[2]{3, 7}, array[2]{2, 6}, array[2]{5, 7}};

#declare FaceArrays = array[6]{array[5]{5, 4, 6, 7, 5}, array[5]{2, 0, 4, 6, 2}, array[5]{0, 4, 5, 1, 0}, array[5]{1, 3, 7, 5, 1}, array[5]{2, 6, 7, 3, 2}, array[5]{1, 0, 2, 3, 1}};


// prepare cube elements
#declare Vertices = union{
	#for( Index, 0, 7 )
	    sphere{ P[Index], RadVert }
	#end
}

#declare Edges = union{
	#for( Index, 0, 11 )
	    #local EdgeArray = EdgeArrays[Index];
	    cylinder{ P[EdgeArray[0]], P[EdgeArray[1]], RadEdge }
	#end
}

#declare Faces = union{
	#for( Index, 0, 5 )
	    #local FaceArray = FaceArrays[Index];
	    polygon{ 5,
	        #for(VertexIndexInFace, 0, 4)
	            P[FaceArray[VertexIndexInFace]]
	        #end
	    }
	#end
}


// monochrome colors
#declare MyBlack = srgb .22;
#declare MyGray = srgb .5;
#declare MyWhite = srgb .9;


// cube colors: black, red, yellow, blue, green
#declare EdgeColors = array[5]{MyBlack, srgb<255,0,0>/255, srgb<233,132,0>/255, srgb<0,65,255>/255, srgb<0,143,0>/255};
#declare FaceColors = array[5]{MyGray, srgb<255,89,89>/255, srgb<241,175,89>/255, srgb<89,131,255>/255, srgb<89,182,89>/255};


// prepare rotation
#declare PRot = <0, 1, -(1/2 + sqrt(5)/2)>;  // icosahedron point 6
#declare PRotNorm = vnormalize(PRot);
#declare Fifth = 2*pi/5;


#declare WhiteVertices = 0;
#if (WhiteVertices)
    #declare RadVert = RadVert*1.3;
#end

// rotated cubes
#declare BlackCube = union{
	object{
		Edges
		pigment{color EdgeColors[0]}
	}
	object{
		Faces
		pigment{color FaceColors[0]}
	}
}

#declare RedCube = union{
	object{
		Edges
		RotMatFromVectorAndAngle(PRotNorm, 1*Fifth)
		pigment{color EdgeColors[1]}
	}
	object{
		Faces
		RotMatFromVectorAndAngle(PRotNorm, 1*Fifth)
		pigment{color FaceColors[1]}
	}
	object{
		Vertices
		RotMatFromVectorAndAngle(PRotNorm, 1*Fifth)
		pigment{color #if (WhiteVertices) MyWhite #else EdgeColors[1] #end}
	}
}

#declare YellowCube = union{
	object{
		Edges
		RotMatFromVectorAndAngle(PRotNorm, 2*Fifth)
		pigment{color EdgeColors[2]}
	}
	object{
		Faces
		RotMatFromVectorAndAngle(PRotNorm, 2*Fifth)
		pigment{color FaceColors[2]}
	}
	object{
		Vertices
		RotMatFromVectorAndAngle(PRotNorm, 2*Fifth)
		pigment{color #if (WhiteVertices) MyWhite #else EdgeColors[2] #end}
	}
}

#declare BlueCube = union{
	object{
		Edges
		RotMatFromVectorAndAngle(PRotNorm, 3*Fifth)
		pigment{color EdgeColors[3]}
	}
	object{
		Faces
		RotMatFromVectorAndAngle(PRotNorm, 3*Fifth)
		pigment{color FaceColors[3]}
	}
	object{
		Vertices
		RotMatFromVectorAndAngle(PRotNorm, 3*Fifth)
		pigment{color #if (WhiteVertices) MyWhite #else EdgeColors[3] #end}
	}
}

#declare GreenCube = union{
	object{
		Edges
		RotMatFromVectorAndAngle(PRotNorm, 4*Fifth)
		pigment{color EdgeColors[4]}
	}
	object{
		Faces
		RotMatFromVectorAndAngle(PRotNorm, 4*Fifth)
		pigment{color FaceColors[4]}
	}
	object{
		Vertices
		RotMatFromVectorAndAngle(PRotNorm, 4*Fifth)
		pigment{color #if (WhiteVertices) MyWhite #else EdgeColors[4] #end}
	}
}




////////////////////////////////////////////////////////////////////////

#declare TargetAngle = - 2 * atan( (sqrt(5)-2) / sqrt(3) );

//#declare Angle = 0;                           // compound of five cubes
#declare Angle = TargetAngle;                 // compound of four cubes
//#declare Angle = TargetAngle * clock/50;      // animation

union{

    object{ BlackCube }
    object{ RedCube     RotMatFromVectorAndAngle(< 1,-1,-1>,  Angle) }
    object{ YellowCube  RotMatFromVectorAndAngle(<-1, 1,-1>,  Angle) }
    object{ BlueCube    RotMatFromVectorAndAngle(< 1, 1,-1>, -Angle) }
    object{ GreenCube   RotMatFromVectorAndAngle(<-1,-1,-1>, -Angle) }
    
    //RotateDirOnDir(<1, -1, -1>, <0, 0, -1>)

}


/*

povray compound_of_four_cubes.pov +ua +fn +H1000 +W1000

for i in $(seq -f "%03g" 1 51); do povray compound_of_four_cubes.pov +ua +fn +H1000 +W1000 -D -k$i -O$i; done


convert 000.png -crop 925x933+38+36 +repage 000.png
for i in $(seq -f "%03g" 0 719); do convert $i.png -crop 925x933+38+36 +repage $i.png; done


for i in $(seq -f "%03g" 0 719); do convert $i.png  -resize 50%  $i.png; done

*/
