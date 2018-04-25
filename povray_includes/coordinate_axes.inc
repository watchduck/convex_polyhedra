#include "colors.inc"

#macro CoordinateAxes(AxisLen, RGBStyle)

    // `RGBStyle` is true for RGB colors or false for gray



    ////////////////////// axes

    #macro Axis_(AxisLen, Texture1, Texture2)
      union{
        cylinder { <0,-AxisLen,0>, <0,AxisLen,0>, 0.05
          texture{checker texture{Texture1}
            texture{Texture2}
            translate<0.1, 0, 0.1>
          }
        }
        cone{<0,AxisLen,0>,0.2,<0,AxisLen+0.7,0>,0
        texture{Texture1}
        }
      }
    #end

    #macro Texture(AxisNum)
        #local Colors = array[3] {
            pigment{ color Red },
            pigment{ color rgb<0, 0.35, 0> },
            pigment{ color Blue },
        };
        #if(RGBStyle)
            #local Color = Colors[AxisNum];
        #else
            #local Color = pigment{ color rgb .05 };
        #end
        texture {
          Color
          finish { phong 1}
        }
    #end


    #declare TextureLight = texture {
      pigment{ color White }
      finish { phong 1}
    }

    #declare Axes = union{
      object { 
        Axis_(AxisLen, Texture(0), TextureLight)
        rotate< 0,0,-90>
      }
      object {
        Axis_(AxisLen, Texture(1), TextureLight)
      }
      object {
        Axis_(AxisLen, Texture(2), TextureLight)
        rotate<90,0,  0>
      }
    }


    ////////////////////// indicators of direction of rotation

    #declare Torus = torus {5, 0.5}
    #declare CutBox = box{ 
      <-10, -10, -10>, <10, 10, 10>
      translate 10*z
    }

    #declare Cone = cone{
      <-5, 0, 0>, 1.3
      <-5, 0, 3>, 0
    }

    #declare TorusSegment = difference{
      object{Torus}
      object{CutBox}
    }
    #declare TorusSegment2 = object{
      object{TorusSegment}
      rotate -50*y  // ring length
    }
    #declare TorusSegment = union{
      object{TorusSegment}
      object{TorusSegment2}
    }

    #declare ArrowY = union{
      object{TorusSegment}
      object{Cone}
      scale 0.1
      translate (AxisLen+1)*y
      rotate -70*y  // ring rotation
    }
    #declare ArrowX = object{
      object{ArrowY}
      rotate -90*z
    }
    #declare ArrowZ = object{
      object{ArrowX}
      rotate -90*y
    }

    #declare RotationIndicators = union{
      object{
        ArrowY
        Texture(1)
      }
      object{
        ArrowX
        Texture(0)
      }
      object{
        ArrowZ
        Texture(2)
      }
    }


    ////////////////////// text

    #declare Text = union{
        text { ttf "arial.ttf",  "x",  0.15,  0  Texture(0)
          scale 0.7
          translate <AxisLen+0.15, -0.8, 0> 
        }
        text { 
          ttf "arial.ttf",  "y",  0.15,  0  Texture(1)
          scale 0.7
          translate <-0.8, AxisLen+0.15, 0> 
        }
        text { ttf "arial.ttf",  "z",  0.15,  0  Texture(2)
          scale 0.9
          translate <0.9, -0.5, AxisLen+0.15> 
        }
    }


    ////////////////////// use objects

    union{
        object{Axes}
        object{RotationIndicators}
        object{Text}
    }





#end


