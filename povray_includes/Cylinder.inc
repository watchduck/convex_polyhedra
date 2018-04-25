#macro Cylinder(OldA, OldB, Offset, Rad, Color)

    // cylinder gets shortened by `Offset`

    #declare Direction = vnormalize(OldB-OldA);

    #declare NewA = OldA + Offset*Direction;
    #declare NewB = OldB - Offset*Direction;

    cylinder{  
        NewA,
        NewB,
        Rad      
        pigment{color Color}
    }

#end
