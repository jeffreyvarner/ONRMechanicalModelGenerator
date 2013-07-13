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
NUMBER_OF_NODES = DF.NUMBER_OF_NODES;
ALPHA_MATRIX = zeros(NUMBER_OF_NODES,NUMBER_OF_NODES);

% Populate the alpha matrix - 
DISTANCE = sqrt((x(19,1) - x(21,1))^2 + (x(20,1) - x(22,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(1,2);
DENOM = DISTANCE;
ALPHA_MATRIX(1,2) = NUM/DENOM;

DISTANCE = sqrt((x(19,1) - x(25,1))^2 + (x(20,1) - x(26,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(1,4);
DENOM = DISTANCE;
ALPHA_MATRIX(1,4) = NUM/DENOM;

DISTANCE = sqrt((x(25,1) - x(31,1))^2 + (x(26,1) - x(32,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(4,7);
DENOM = DISTANCE;
ALPHA_MATRIX(4,7) = NUM/DENOM;

DISTANCE = sqrt((x(25,1) - x(27,1))^2 + (x(26,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(4,5);
DENOM = DISTANCE;
ALPHA_MATRIX(4,5) = NUM/DENOM;

DISTANCE = sqrt((x(21,1) - x(23,1))^2 + (x(22,1) - x(24,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(2,3);
DENOM = DISTANCE;
ALPHA_MATRIX(2,3) = NUM/DENOM;

DISTANCE = sqrt((x(21,1) - x(27,1))^2 + (x(22,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(2,5);
DENOM = DISTANCE;
ALPHA_MATRIX(2,5) = NUM/DENOM;

DISTANCE = sqrt((x(27,1) - x(29,1))^2 + (x(28,1) - x(30,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(5,6);
DENOM = DISTANCE;
ALPHA_MATRIX(5,6) = NUM/DENOM;

DISTANCE = sqrt((x(27,1) - x(33,1))^2 + (x(28,1) - x(34,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(5,8);
DENOM = DISTANCE;
ALPHA_MATRIX(5,8) = NUM/DENOM;

DISTANCE = sqrt((x(23,1) - x(29,1))^2 + (x(24,1) - x(30,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(3,6);
DENOM = DISTANCE;
ALPHA_MATRIX(3,6) = NUM/DENOM;

DISTANCE = sqrt((x(29,1) - x(35,1))^2 + (x(30,1) - x(36,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(6,9);
DENOM = DISTANCE;
ALPHA_MATRIX(6,9) = NUM/DENOM;

DISTANCE = sqrt((x(31,1) - x(33,1))^2 + (x(32,1) - x(34,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(7,8);
DENOM = DISTANCE;
ALPHA_MATRIX(7,8) = NUM/DENOM;

DISTANCE = sqrt((x(33,1) - x(35,1))^2 + (x(34,1) - x(36,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(8,9);
DENOM = DISTANCE;
ALPHA_MATRIX(8,9) = NUM/DENOM;

DISTANCE = sqrt((x(21,1) - x(19,1))^2 + (x(22,1) - x(20,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(2,1);
DENOM = DISTANCE;
ALPHA_MATRIX(2,1) = NUM/DENOM;

DISTANCE = sqrt((x(25,1) - x(19,1))^2 + (x(26,1) - x(20,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(4,1);
DENOM = DISTANCE;
ALPHA_MATRIX(4,1) = NUM/DENOM;

DISTANCE = sqrt((x(31,1) - x(25,1))^2 + (x(32,1) - x(26,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(7,4);
DENOM = DISTANCE;
ALPHA_MATRIX(7,4) = NUM/DENOM;

DISTANCE = sqrt((x(27,1) - x(25,1))^2 + (x(28,1) - x(26,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(5,4);
DENOM = DISTANCE;
ALPHA_MATRIX(5,4) = NUM/DENOM;

DISTANCE = sqrt((x(23,1) - x(21,1))^2 + (x(24,1) - x(22,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(3,2);
DENOM = DISTANCE;
ALPHA_MATRIX(3,2) = NUM/DENOM;

DISTANCE = sqrt((x(27,1) - x(21,1))^2 + (x(28,1) - x(22,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(5,2);
DENOM = DISTANCE;
ALPHA_MATRIX(5,2) = NUM/DENOM;

DISTANCE = sqrt((x(29,1) - x(27,1))^2 + (x(30,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(6,5);
DENOM = DISTANCE;
ALPHA_MATRIX(6,5) = NUM/DENOM;

DISTANCE = sqrt((x(33,1) - x(27,1))^2 + (x(34,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(8,5);
DENOM = DISTANCE;
ALPHA_MATRIX(8,5) = NUM/DENOM;

DISTANCE = sqrt((x(29,1) - x(23,1))^2 + (x(30,1) - x(24,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(6,3);
DENOM = DISTANCE;
ALPHA_MATRIX(6,3) = NUM/DENOM;

DISTANCE = sqrt((x(35,1) - x(29,1))^2 + (x(36,1) - x(30,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(9,6);
DENOM = DISTANCE;
ALPHA_MATRIX(9,6) = NUM/DENOM;

DISTANCE = sqrt((x(33,1) - x(31,1))^2 + (x(34,1) - x(32,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(8,7);
DENOM = DISTANCE;
ALPHA_MATRIX(8,7) = NUM/DENOM;

DISTANCE = sqrt((x(35,1) - x(33,1))^2 + (x(36,1) - x(34,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(9,8);
DENOM = DISTANCE;
ALPHA_MATRIX(9,8) = NUM/DENOM;

return;
