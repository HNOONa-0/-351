## Copyright (C) 2022 Ahmed hany
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} my_trapz (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ahmed hany <Ahmed hany@DESKTOP-LVBHF97>
## Created: 2022-11-20

function ans = Trap(f,a,b,n)
  h=(b-a)/n;
  x=a;
  s=eval(f);
  x=b;
  s=s+eval(f);

  for i=a+h:h:b-h
    x=i;
    s=s+2*eval(f);
  endfor
  ans=(h/2)*(s);
endfunction
