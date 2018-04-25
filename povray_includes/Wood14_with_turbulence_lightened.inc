// new colors come from M_Wood10A, M_Wood10B


#local RFactor = .85;
#local GFactor = .75;
#local BFactor = .65;

#declare M_Wood14A = colour_map {
    [0.00 0.10 color rgb <1.00*RFactor, 0.85*GFactor, 0.50*BFactor> *.4 
              color rgb <0.90*RFactor, 0.70*GFactor, 0.46*BFactor> *.4 ]
    [0.10 0.90 color rgb <0.90*RFactor, 0.70*GFactor, 0.46*BFactor> *.4
              color rgb <0.90*RFactor, 0.70*GFactor, 0.46*BFactor> *.4  ]
    [0.90 1.0 color rgb <0.90*RFactor, 0.70*GFactor, 0.46*BFactor> *.3
              color rgb <1.00*RFactor, 0.85*GFactor, 0.50*BFactor> *.3  ]
}

#declare M_Wood14B = colour_map {
    [0.00 0.10 color rgbt <1.00*RFactor, 0.45*GFactor, 0.10*BFactor, 0.7>
              color rgbt <0.85*RFactor, 0.65*GFactor, 0.40*BFactor, 0.8>]
    [0.10 0.15 color rgbt <0.85*RFactor, 0.65*GFactor, 0.40*BFactor, 0.8>
              color rgbt <0.85*RFactor, 0.65*GFactor, 0.40*BFactor, 0.9>]
    [0.15 0.20 color rgbt <0.85*RFactor, 0.65*GFactor, 0.40*BFactor, 0.9>
              color rgbt <1.00*RFactor, 0.45*GFactor, 0.10*BFactor, 0.9>]
    [0.20 1.0 color rgbt <0.8*RFactor, 0.6*GFactor, 0.30*BFactor, 0.8>
              color rgbt <.9*RFactor, 0.4*GFactor, 0.10*BFactor, 0.8>]
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


#declare Wood14_with_turbulence_lightened = 
    texture {  pigment{ P_WoodGrain14A color_map { M_Wood14A }}} 
    texture {  pigment{ P_WoodGrain14B color_map { M_Wood14B }}}

