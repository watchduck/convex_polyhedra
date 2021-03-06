#declare ColorFactor = 0.3;

#declare M_Wood14A = colour_map {
    [0.00 0.10 color rgb < 0.80, 0.232, 0.115 >*ColorFactor
               color rgb < 0.80, 0.232, 0.115 >*ColorFactor]
    [0.10 0.90 color rgb < 0.80, 0.232, 0.115 >*ColorFactor
               color rgb < 0.45, 0.115, 0.060 >*ColorFactor]
    [0.90 1.0  color rgb < 0.45, 0.115, 0.060 >*ColorFactor
               color rgb < 0.45, 0.115, 0.060 >*ColorFactor]
}

#declare M_Wood14B = colour_map {
    [0.00 0.10 color rgbt < 0.70*ColorFactor, 0.232*ColorFactor, 0.115*ColorFactor, 0.5 >
               color rgbt < 0.70*ColorFactor, 0.232*ColorFactor, 0.115*ColorFactor, 0.7 >]
    [0.10 0.15 color rgbt < 0.70*ColorFactor, 0.232*ColorFactor, 0.115*ColorFactor, 0.7 >
               color rgbt < 0.35*ColorFactor, 0.115*ColorFactor, 0.060*ColorFactor, 0.9 >]
    [0.15 0.20 color rgbt < 0.70*ColorFactor, 0.232*ColorFactor, 0.115*ColorFactor, 0.9 >
               color rgbt < 0.35*ColorFactor, 0.115*ColorFactor, 0.060*ColorFactor, 0.7 >]
    [0.20 1.0  color rgbt < 0.35*ColorFactor, 0.115*ColorFactor, 0.060*ColorFactor, 0.7 >
               color rgbt < 0.35*ColorFactor, 0.115*ColorFactor, 0.060*ColorFactor, 0.5 >]
}


#declare P_WoodGrain14A =
pigment {
    wood
    colour_map { M_Wood14A }
    turbulence 0.25
    octaves 2
    scale <0.15, .15, 1>
    translate < -1 0 0 >
    rotate <-3, -3, 0>
}

#declare P_WoodGrain14B=
pigment {
    wood
    colour_map { M_Wood14B }
    turbulence 0.2
    lambda 2.75
    omega 1.15
    octaves 4
    scale <5, 0.075, 1>
    rotate x*85
}


#declare Wood14_with_turbulence = 
    texture {  pigment{ P_WoodGrain14A color_map { M_Wood14A }}} 
    texture {  pigment{ P_WoodGrain14B color_map { M_Wood14B }}}

