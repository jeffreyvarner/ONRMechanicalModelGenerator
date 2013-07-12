function [ALPHA_MATRIX] = CalculateAlphaMatrix(x,LAMBDA_MATRIX,DF);
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
% CalculateAlphaMatrix.m 
% CalculateAlphaMatrix calculates the alpha matrix given a state and a native length
% matrix. 
% ------------------------------------------------------------------------------------- %

% Define the system - 
NUMBER_OF_EDGES = DF.NUMBER_OF_EDGES;
ALPHA_MATRIX = zeros(NUMBER_OF_EDGES,NUMBER_OF_EDGES);

% Populate the alpha matrix - 
DISTANCE = sqrt((x(7,1) - x(9,1))^2 + (x(8,1) - x(10,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(1,2);
DENOM = DISTANCE;
ALPHA_MATRIX(1,2) = NUM/DENOM;

DISTANCE = sqrt((x(9,1) - x(11,1))^2 + (x(10,1) - x(12,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(2,3);
DENOM = DISTANCE;
ALPHA_MATRIX(2,3) = NUM/DENOM;

DISTANCE = sqrt((x(11,1) - x(7,1))^2 + (x(12,1) - x(8,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(3,1);
DENOM = DISTANCE;
ALPHA_MATRIX(3,1) = NUM/DENOM;

return;
