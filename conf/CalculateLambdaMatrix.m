function [LAMBDA_MATRIX] = CalculateLambdaMatrix(x,NUMBER_OF_NODES);
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
% CalculateLambdaMatrix.m 
% CalculateLambdaMatrix calculates the lambda matrix given a state and a native length
% matrix. 
% ------------------------------------------------------------------------------------- %

% Define the system - 
% Populate the lambda matrix - 
LAMBDA_MATRIX = zeros(NUMBER_OF_NODES,NUMBER_OF_NODES);

DISTANCE = sqrt((x(19,1) - x(21,1))^2 + (x(20,1) - x(22,1))^2);
LAMBDA_MATRIX(1,2) = DISTANCE;

DISTANCE = sqrt((x(19,1) - x(25,1))^2 + (x(20,1) - x(26,1))^2);
LAMBDA_MATRIX(1,4) = DISTANCE;

DISTANCE = sqrt((x(25,1) - x(31,1))^2 + (x(26,1) - x(32,1))^2);
LAMBDA_MATRIX(4,7) = DISTANCE;

DISTANCE = sqrt((x(25,1) - x(27,1))^2 + (x(26,1) - x(28,1))^2);
LAMBDA_MATRIX(4,5) = DISTANCE;

DISTANCE = sqrt((x(21,1) - x(23,1))^2 + (x(22,1) - x(24,1))^2);
LAMBDA_MATRIX(2,3) = DISTANCE;

DISTANCE = sqrt((x(21,1) - x(27,1))^2 + (x(22,1) - x(28,1))^2);
LAMBDA_MATRIX(2,5) = DISTANCE;

DISTANCE = sqrt((x(27,1) - x(29,1))^2 + (x(28,1) - x(30,1))^2);
LAMBDA_MATRIX(5,6) = DISTANCE;

DISTANCE = sqrt((x(27,1) - x(33,1))^2 + (x(28,1) - x(34,1))^2);
LAMBDA_MATRIX(5,8) = DISTANCE;

DISTANCE = sqrt((x(23,1) - x(29,1))^2 + (x(24,1) - x(30,1))^2);
LAMBDA_MATRIX(3,6) = DISTANCE;

DISTANCE = sqrt((x(29,1) - x(35,1))^2 + (x(30,1) - x(36,1))^2);
LAMBDA_MATRIX(6,9) = DISTANCE;

DISTANCE = sqrt((x(31,1) - x(33,1))^2 + (x(32,1) - x(34,1))^2);
LAMBDA_MATRIX(7,8) = DISTANCE;

DISTANCE = sqrt((x(33,1) - x(35,1))^2 + (x(34,1) - x(36,1))^2);
LAMBDA_MATRIX(8,9) = DISTANCE;

DISTANCE = sqrt((x(21,1) - x(19,1))^2 + (x(22,1) - x(20,1))^2);
LAMBDA_MATRIX(2,1) = DISTANCE;

DISTANCE = sqrt((x(25,1) - x(19,1))^2 + (x(26,1) - x(20,1))^2);
LAMBDA_MATRIX(4,1) = DISTANCE;

DISTANCE = sqrt((x(31,1) - x(25,1))^2 + (x(32,1) - x(26,1))^2);
LAMBDA_MATRIX(7,4) = DISTANCE;

DISTANCE = sqrt((x(27,1) - x(25,1))^2 + (x(28,1) - x(26,1))^2);
LAMBDA_MATRIX(5,4) = DISTANCE;

DISTANCE = sqrt((x(23,1) - x(21,1))^2 + (x(24,1) - x(22,1))^2);
LAMBDA_MATRIX(3,2) = DISTANCE;

DISTANCE = sqrt((x(27,1) - x(21,1))^2 + (x(28,1) - x(22,1))^2);
LAMBDA_MATRIX(5,2) = DISTANCE;

DISTANCE = sqrt((x(29,1) - x(27,1))^2 + (x(30,1) - x(28,1))^2);
LAMBDA_MATRIX(6,5) = DISTANCE;

DISTANCE = sqrt((x(33,1) - x(27,1))^2 + (x(34,1) - x(28,1))^2);
LAMBDA_MATRIX(8,5) = DISTANCE;

DISTANCE = sqrt((x(29,1) - x(23,1))^2 + (x(30,1) - x(24,1))^2);
LAMBDA_MATRIX(6,3) = DISTANCE;

DISTANCE = sqrt((x(35,1) - x(29,1))^2 + (x(36,1) - x(30,1))^2);
LAMBDA_MATRIX(9,6) = DISTANCE;

DISTANCE = sqrt((x(33,1) - x(31,1))^2 + (x(34,1) - x(32,1))^2);
LAMBDA_MATRIX(8,7) = DISTANCE;

DISTANCE = sqrt((x(35,1) - x(33,1))^2 + (x(36,1) - x(34,1))^2);
LAMBDA_MATRIX(9,8) = DISTANCE;

return;
