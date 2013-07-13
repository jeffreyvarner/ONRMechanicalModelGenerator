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
DISTANCE = sqrt((x(19,1) - x(27,1))^2 + (x(20,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(1,5);
DENOM = DISTANCE;
ALPHA_MATRIX(1,5) = NUM/DENOM;

DISTANCE = sqrt((x(21,1) - x(25,1))^2 + (x(22,1) - x(26,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(2,4);
DENOM = DISTANCE;
ALPHA_MATRIX(2,4) = NUM/DENOM;

DISTANCE = sqrt((x(23,1) - x(19,1))^2 + (x(24,1) - x(20,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(3,1);
DENOM = DISTANCE;
ALPHA_MATRIX(3,1) = NUM/DENOM;

DISTANCE = sqrt((x(25,1) - x(27,1))^2 + (x(26,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(4,5);
DENOM = DISTANCE;
ALPHA_MATRIX(4,5) = NUM/DENOM;

DISTANCE = sqrt((x(27,1) - x(21,1))^2 + (x(28,1) - x(22,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(5,2);
DENOM = DISTANCE;
ALPHA_MATRIX(5,2) = NUM/DENOM;

DISTANCE = sqrt((x(29,1) - x(19,1))^2 + (x(30,1) - x(20,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(6,1);
DENOM = DISTANCE;
ALPHA_MATRIX(6,1) = NUM/DENOM;

DISTANCE = sqrt((x(31,1) - x(27,1))^2 + (x(32,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(7,5);
DENOM = DISTANCE;
ALPHA_MATRIX(7,5) = NUM/DENOM;

DISTANCE = sqrt((x(33,1) - x(23,1))^2 + (x(34,1) - x(24,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(8,3);
DENOM = DISTANCE;
ALPHA_MATRIX(8,3) = NUM/DENOM;

DISTANCE = sqrt((x(35,1) - x(21,1))^2 + (x(36,1) - x(22,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(9,2);
DENOM = DISTANCE;
ALPHA_MATRIX(9,2) = NUM/DENOM;

DISTANCE = sqrt((x(37,1) - x(27,1))^2 + (x(38,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(10,5);
DENOM = DISTANCE;
ALPHA_MATRIX(10,5) = NUM/DENOM;

DISTANCE = sqrt((x(39,1) - x(29,1))^2 + (x(40,1) - x(30,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(11,6);
DENOM = DISTANCE;
ALPHA_MATRIX(11,6) = NUM/DENOM;

DISTANCE = sqrt((x(41,1) - x(23,1))^2 + (x(42,1) - x(24,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(12,3);
DENOM = DISTANCE;
ALPHA_MATRIX(12,3) = NUM/DENOM;

DISTANCE = sqrt((x(43,1) - x(27,1))^2 + (x(44,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(13,5);
DENOM = DISTANCE;
ALPHA_MATRIX(13,5) = NUM/DENOM;

DISTANCE = sqrt((x(45,1) - x(31,1))^2 + (x(46,1) - x(32,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(14,7);
DENOM = DISTANCE;
ALPHA_MATRIX(14,7) = NUM/DENOM;

DISTANCE = sqrt((x(47,1) - x(25,1))^2 + (x(48,1) - x(26,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(15,4);
DENOM = DISTANCE;
ALPHA_MATRIX(15,4) = NUM/DENOM;

DISTANCE = sqrt((x(49,1) - x(27,1))^2 + (x(50,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(16,5);
DENOM = DISTANCE;
ALPHA_MATRIX(16,5) = NUM/DENOM;

DISTANCE = sqrt((x(51,1) - x(33,1))^2 + (x(52,1) - x(34,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(17,8);
DENOM = DISTANCE;
ALPHA_MATRIX(17,8) = NUM/DENOM;

DISTANCE = sqrt((x(53,1) - x(31,1))^2 + (x(54,1) - x(32,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(18,7);
DENOM = DISTANCE;
ALPHA_MATRIX(18,7) = NUM/DENOM;

DISTANCE = sqrt((x(55,1) - x(27,1))^2 + (x(56,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(19,5);
DENOM = DISTANCE;
ALPHA_MATRIX(19,5) = NUM/DENOM;

DISTANCE = sqrt((x(57,1) - x(35,1))^2 + (x(58,1) - x(36,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(20,9);
DENOM = DISTANCE;
ALPHA_MATRIX(20,9) = NUM/DENOM;

DISTANCE = sqrt((x(59,1) - x(33,1))^2 + (x(60,1) - x(34,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(21,8);
DENOM = DISTANCE;
ALPHA_MATRIX(21,8) = NUM/DENOM;

DISTANCE = sqrt((x(61,1) - x(27,1))^2 + (x(62,1) - x(28,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(22,5);
DENOM = DISTANCE;
ALPHA_MATRIX(22,5) = NUM/DENOM;

DISTANCE = sqrt((x(63,1) - x(29,1))^2 + (x(64,1) - x(30,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(23,6);
DENOM = DISTANCE;
ALPHA_MATRIX(23,6) = NUM/DENOM;

DISTANCE = sqrt((x(65,1) - x(35,1))^2 + (x(66,1) - x(36,1))^2);
NUM = DISTANCE - LAMBDA_MATRIX(24,9);
DENOM = DISTANCE;
ALPHA_MATRIX(24,9) = NUM/DENOM;

return;
