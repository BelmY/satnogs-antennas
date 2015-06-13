#!/usr/bin/octave -qf
#
# Yagi-Uda antenna wavelength size calculator
#
# Copyright (C) 2014-2015 Vasilis Tsiligiannis <acinonyx@openwrt.gr>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Describe antenna
#
# Elements are defined from reflector to directors. First column is
# the position and second the size of the element. First element
# position (reflector) should always be zero. All sizes are in
# Single reflector and single radiator design is assumed.

antenna.dc = 1;
antenna.elements = [ 0, 335e-3 * antenna.dc
                     145e-3, 323e-3 * antenna.dc
                     200e-3, 302e-3 * antenna.dc
                     375e-3, 291e-3 * antenna.dc
                     625e-3, 285e-3 * antenna.dc
                     910e-3, 282e-3 * antenna.dc
                     1200e-3, 279e-3 * antenna.dc
                     1485e-3, 279e-3 * antenna.dc
                     1770e-3, 283e-3 * antenna.dc
                     1985e-3, 279e-3 * antenna.dc ] * 425e6 / 435e6;
antenna.diameter = 8e-3;

# Center frequency
frequency = 435e6;

# NEC element segments
nec.segments = 41;

# DO NOT EDIT BELOW!!!

# Constants

# Speed of light
c = 299792458;

# Functions

# Appends half values from last column
#
# Parameters
#       mat             Matrix to append
# 
# Returns
#       mat-append      Resulting matrix

function ret_mat = append_last_col_half (mat)
  ret_mat = [ mat, mat(:, end) / 2];
endfunction

# Converts frequency to wavelength
#
# Parameters
#       freq            Frequency
#       c               Speed of light
#
# Returns
#       wave            Wavelength

function ret_wave = freq_to_wave (freq, c)
  ret_wave = c / freq;
endfunction

# Main

# Sanity checks

# Check if we have at least 2 elements
if rows(antenna.elements) < 2
  error("Antenna with less than two elements");
endif

# Check if reflector is at position zero
if antenna.elements(1, 1) != 0
  error("Reflector position is not zero");
endif

# Calculate wavelength
wave = freq_to_wave(frequency, c);

# Duplicate last column
antenna.elements = append_last_col_half(antenna.elements);

# Divide by wavelength
antenna.wave = antenna.elements / wave;

# Print description
printf("Yagi-Uda antenna wavelength size calculator\n\n");

# Print wavelength
printf("Wavelength:\t%eλ\n\t\t(%eHz)\n", wave, frequency);
# Print element diameter
printf("Diameter:\t%eλ\n\t\t(%em)\n\n", antenna.diameter / wave, antenna.diameter);

# Print header row
printf("Element\t\tPosition\tLength\t\tHalf length\n");

# Print reflector
printf("Reflector:\t%eλ\t%eλ\t%eλ\n\t\t%em\t%em\t%em\n", [ antenna.wave'(:, 1); antenna.elements'(:, 1) ]);
# Print radiator
printf("Radiator:\t%eλ\t%eλ\t%eλ\n\t\t%em\t%em\t%em\n", [ antenna.wave'(:, 2); antenna.elements'(:, 2) ]);
# Check if directors exist and print them
if rows(antenna.elements) > 2
  printf("Director:\t%eλ\t%eλ\t%eλ\n\t\t%em\t%em\t%em\n", [ antenna.wave'(:, 3:end); antenna.elements'(:, 3:end) ]);
endif

# Print NEC2
printf("\n\n-------- NEC2 wires --------\n");
# Print GW
for i = 1:rows(antenna.elements)
  printf("GW\t%d\t%d\t%e\t%e\t%e\t%e\t%e\t%e\t%e\n", i, nec.segments, antenna.wave'(1, i), -antenna.wave'(3, i), 0, antenna.wave'([1, 3], i), 0, antenna.diameter / (2 * wave));
endfor
# Print GM
printf("GM\t%d\t%d\t%e\t%e\t%e\t%e\t%e\t%e\t%e\n", 0, 0, 90, 0, 0, -antenna.wave'([1], 2), 0, 0, 0);
# Print GS
printf("GS\t%d\t%d\t%e\t%e\t%e\t%e\t%e\t%e\t%e\n", 0, 0, wave, 0, 0, 0, 0, 0, 0);
