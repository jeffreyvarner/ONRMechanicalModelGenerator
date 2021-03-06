function [SPRING_MATRIX] = CalculateSpringConstantMatrix(x,NUMBER_OF_NODES);
% ------------------------------------------------------------------------------------- %
% Copyright (c) 2013 Varnerlab,
% School of Chemical and Biomolecular Engineering,
% Cornell University, Ithaca NY 14853 USA.
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
%
% CalculateSpringConstantMatrix.m 
% CalculateLambdaMatrix calculates the lambda matrix given a state and a native length
% matrix. 
% ------------------------------------------------------------------------------------- %

% Define the system - 
SPRING_MATRIX = zeros(NUMBER_OF_NODES,NUMBER_OF_NODES);

SPRING_MATRIX(1,2) = 0.500000;

SPRING_MATRIX(1,4) = 0.500000;

SPRING_MATRIX(4,7) = 0.500000;

SPRING_MATRIX(4,5) = 0.500000;

SPRING_MATRIX(2,3) = 0.500000;

SPRING_MATRIX(2,5) = 0.500000;

SPRING_MATRIX(5,6) = 0.500000;

SPRING_MATRIX(5,8) = 0.500000;

SPRING_MATRIX(3,6) = 0.500000;

SPRING_MATRIX(6,9) = 0.500000;

SPRING_MATRIX(7,8) = 0.500000;

SPRING_MATRIX(8,9) = 0.500000;

SPRING_MATRIX(2,1) = 0.500000;

SPRING_MATRIX(4,1) = 0.500000;

SPRING_MATRIX(7,4) = 0.500000;

SPRING_MATRIX(5,4) = 0.500000;

SPRING_MATRIX(3,2) = 0.500000;

SPRING_MATRIX(5,2) = 0.500000;

SPRING_MATRIX(6,5) = 0.500000;

SPRING_MATRIX(8,5) = 0.500000;

SPRING_MATRIX(6,3) = 0.500000;

SPRING_MATRIX(9,6) = 0.500000;

SPRING_MATRIX(8,7) = 0.500000;

SPRING_MATRIX(9,8) = 0.500000;

return;
