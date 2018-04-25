// The following code is used to get the light for the wooden polyhedra.
// It is used with few changes and without understanding much of it.
// The rendering time is much higher where this file is included.
// It came from here: http://www.labri.fr/perso/nrougier/artwork/index.html
// This is the description from the original file:



// Go board or go table
// Copyright (C) 2003 Nicolas Rougier
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Library General Public
// License as published by the Free Software Foundation; either
// version 2 of the License, or (at your option) any later version.
//
// This software is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Library General Public License for more details.
//
// You should have received a copy of the GNU Library General Public
// License along with this software; if not, write to the
// Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// Boston, MA 02111-1307, USA.
// ---------------------------------------------------------------------------
// Persistence of Vision Ray Tracer Scene Description File
// File: goban.inc
// Vers: 3.5
// Desc: Macros for making go board or go table (with traditional feet)
// Date: December 2003
// Auth: Nicolas Rougier
// ---------------------------------------------------------------------------



// ========================================
//  Switches & colors
// ========================================
#declare use_photon = 1;
#declare show_glass = 1;
#declare C_Sun       = <255,235,197>/255*1.7;
#declare C_SkyTop    = <132,164,255>/255;
#declare C_SkyBottom = <165,185,251>/255;

// ========================================
//  Settings
// ========================================
global_settings {
  assumed_gamma 1
  max_trace_level 100
  #if (use_photon)
    photons {
      spacing .005
      autostop 0
    }
  #end
  radiosity {
    pretrace_start 0.08
    pretrace_end   0.02
    count 600
    error_bound .1
    nearest_count 8
    recursion_limit 1
    gray_threshold 0
    minimum_reuse 0.015
    brightness 1.0
    adc_bailout 0.01/2
  }
}

// ========================================
//  Default settings
// ========================================
#default {
  texture {
    finish {
      ambient 0
      diffuse 1
    }
  }
}

// ========================================
//  Camera
// ========================================
#include "screen.inc"

#declare EyePos  = <12, 12, -45>;
#declare EyeLook = <0, 0, 0>;
#declare EyeAngle = 12.5;
Set_Camera(EyePos, EyeLook, EyeAngle)


// ========================================
//  Sky
// ========================================
#macro GammaColor (Color,Gamma)
  rgb <pow(Color.red,Gamma),pow(Color.green,Gamma),pow(Color.blue,Gamma)>
#end
sky_sphere {
  pigment {
    function {min (1, max (0, y))}
    poly_wave 0.6
    color_map {
      [0 rgb C_SkyBottom]
      [1 rgb C_SkyTop]
    }
  }
}

// ========================================
//  Sun light
// ========================================
light_source {
  vnormalize(<-1, 5, -3>) * 1000
  rgb C_Sun
  fade_power 2 fade_distance 1000
  area_light 10*x 10*z  5, 5 jitter adaptive 1 circular orient
  //rotate -x*55
  //rotate  y*45
  looks_like {
    sphere {
      0, 10 hollow
      pigment{rgbt 1} finish {diffuse 0 ambient 0} interior {media {emission 1000}}
    }
  }  
  #if (use_photon)
    photons {
      refraction on
      reflection on
    }
  #end
  shadowless
}

