#macro LongCylinder(A, B, Rad, Color)

    cylinder{  
        A - 100*(A-B),
        B + 100*(A-B),
        Rad      
        pigment{color Color}
    }

#end
