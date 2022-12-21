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
## @deftypefn {} {@var{retval} =} IAnalyze (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ahmed hany <Ahmed hany@DESKTOP-LVBHF97>
## Created: 2022-12-18

function ans = IAnalyze (f,A,B,n)

  exact=input('Enter exact value:');

  N=[10:10:100];
  a=[1:10];
  b=[1:10];
  c=[1:10];
  exact_arr=[1:10];
  for i=1:length(N)
    a(i)=Trap(f,A,B,N(i) );
    b(i)=Simp(f,A,B,N(i) );
    c(i)=MPoint(f,A,B,N(i) );
    exact_arr(i)=exact;
  endfor
  a;
  b;
  c;
  plot(N,a,'r',N,b,'b',N,c,'y',N,exact_arr,'--g');
  legend('Trap','Simp','MPoint','Exact');
  ans=1;
endfunction
