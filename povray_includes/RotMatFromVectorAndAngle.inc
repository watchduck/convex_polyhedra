#macro RotMatFromVectorAndAngle(Vector, Angle)

    // Takes vector and angle in radians.
    // Can directly be used to rotate an object around the vector.
    // https://stackoverflow.com/questions/48039475/how-to-rotate-an-object-around-a-vector-in-pov-ray
    // https://sites.google.com/site/glennmurray/Home/rotation-matrices-and-formulas/rotation-about-an-arbitrary-axis-in-3-dimensions

    #local Vector = vnormalize(Vector);

    #local U = Vector.x;
    #local V = Vector.y;
    #local W = Vector.z;
    #local Sin = sin(Angle);
    #local Cos = cos(Angle);

    #local M11 = U*U + (1-U*U)*Cos;
    #local M12 = U*V*(1-Cos) - W*Sin;
    #local M13 = U*W*(1-Cos) + V*Sin;

    #local M21 = U*V*(1-Cos) + W*Sin;
    #local M22 = V*V + (1-V*V)*Cos;
    #local M23 = V*W*(1-Cos) - U*Sin;

    #local M31 = U*W*(1-Cos) - V*Sin;
    #local M32 = V*W*(1-Cos) + U*Sin;
    #local M33 = W*W + (1-W*W)*Cos;

    matrix <M11, M12, M13,
            M21, M22, M23,
            M31, M32, M33,
            0  , 0  , 0  >

#end
