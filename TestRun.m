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
## @deftypefn {} {@var{retval} =} TestRun (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ahmed hany <Ahmed hany@DESKTOP-LVBHF97>
## Created: 2022-12-18

function ans = TestRun ()
  A=input('Enter a:');
  B=input('Enter b:');
  f=input('Enter function:','s');
  n=input('Enter n:');
  md=input('Enter method:','s');
  if(strcmp(md,'Trap')==1 || strcmp(md,'Simp')==1 || strcmp(md,'MPoint')==1
  || strcmp(md,'IAnalyze')==1 )
    z=str2func(md);
    ans=z(f,A,B,n);
  else
    disp('no method with such name');
    ans=0;
  endif

endfunction
