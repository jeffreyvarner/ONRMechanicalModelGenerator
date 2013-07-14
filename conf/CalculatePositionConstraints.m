function [new_state_vector] = CalculatePositionConstraints(t,x,DF)
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
% CalculateExternalForcing.m 
% CalculateExternalForcing external forces added to the ssystem.
% Time, state and DF are passed in, external force vector is returned. 
% ------------------------------------------------------------------------------------- %

% Initialize new state vector with old state - 
new_state_vector = x;

% Get the nominal length and spring matrix - 
LAMBDA_MATRIX = DF.LAMBDA_PARAMETER_MATRIX;
SPRING_MATRIX = DF.SPRING_PARAMETER_MATRIX;
IC = DF.INITIAL_CONDITION_VECTOR;

% Width of window - 
ALPHA = 0.5;
BETA = 10.0;
GAMMA = 0.51;

% Enforce MIN and MAX length constraints on connections - 
DISTANCE = sqrt((x(19,1) - x(21,1))^2 + (x(20,1) - x(22,1))^2);
REST_LENGTH = LAMBDA_MATRIX(1,2);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(19,1) = (1-GAMMA)*IC(19,1)+GAMMA*IC(21,1);
	new_state_vector(20,1) = (1-GAMMA)*IC(20,1)+GAMMA*IC(22,1);
end;

DISTANCE = sqrt((x(19,1) - x(25,1))^2 + (x(20,1) - x(26,1))^2);
REST_LENGTH = LAMBDA_MATRIX(1,4);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(19,1) = (1-GAMMA)*IC(19,1)+GAMMA*IC(25,1);
	new_state_vector(20,1) = (1-GAMMA)*IC(20,1)+GAMMA*IC(26,1);
end;

DISTANCE = sqrt((x(25,1) - x(31,1))^2 + (x(26,1) - x(32,1))^2);
REST_LENGTH = LAMBDA_MATRIX(4,7);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(25,1) = (1-GAMMA)*IC(25,1)+GAMMA*IC(31,1);
	new_state_vector(26,1) = (1-GAMMA)*IC(26,1)+GAMMA*IC(32,1);
end;

DISTANCE = sqrt((x(25,1) - x(27,1))^2 + (x(26,1) - x(28,1))^2);
REST_LENGTH = LAMBDA_MATRIX(4,5);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(25,1) = (1-GAMMA)*IC(25,1)+GAMMA*IC(27,1);
	new_state_vector(26,1) = (1-GAMMA)*IC(26,1)+GAMMA*IC(28,1);
end;

DISTANCE = sqrt((x(21,1) - x(23,1))^2 + (x(22,1) - x(24,1))^2);
REST_LENGTH = LAMBDA_MATRIX(2,3);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(21,1) = (1-GAMMA)*IC(21,1)+GAMMA*IC(23,1);
	new_state_vector(22,1) = (1-GAMMA)*IC(22,1)+GAMMA*IC(24,1);
end;

DISTANCE = sqrt((x(21,1) - x(27,1))^2 + (x(22,1) - x(28,1))^2);
REST_LENGTH = LAMBDA_MATRIX(2,5);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(21,1) = (1-GAMMA)*IC(21,1)+GAMMA*IC(27,1);
	new_state_vector(22,1) = (1-GAMMA)*IC(22,1)+GAMMA*IC(28,1);
end;


DISTANCE = sqrt((x(27,1) - x(29,1))^2 + (x(28,1) - x(30,1))^2);
REST_LENGTH = LAMBDA_MATRIX(5,6);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(27,1) = (1-GAMMA)*IC(27,1)+GAMMA*IC(29,1);
	new_state_vector(28,1) = (1-GAMMA)*IC(28,1)+GAMMA*IC(30,1);
end;

DISTANCE = sqrt((x(27,1) - x(33,1))^2 + (x(28,1) - x(34,1))^2);
REST_LENGTH = LAMBDA_MATRIX(5,8);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(27,1) = (1-GAMMA)*IC(27,1)+GAMMA*IC(33,1);
	new_state_vector(28,1) = (1-GAMMA)*IC(28,1)+GAMMA*IC(34,1);
end;

DISTANCE = sqrt((x(23,1) - x(29,1))^2 + (x(24,1) - x(30,1))^2);
REST_LENGTH = LAMBDA_MATRIX(3,6);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(23,1) = (1-GAMMA)*IC(23,1)+GAMMA*IC(29,1);
	new_state_vector(24,1) = (1-GAMMA)*IC(24,1)+GAMMA*IC(30,1);
end;

DISTANCE = sqrt((x(29,1) - x(35,1))^2 + (x(30,1) - x(36,1))^2);
REST_LENGTH = LAMBDA_MATRIX(6,9);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(29,1) = (1-GAMMA)*IC(29,1)+GAMMA*IC(35,1);
	new_state_vector(30,1) = (1-GAMMA)*IC(30,1)+GAMMA*IC(36,1);
end;

DISTANCE = sqrt((x(31,1) - x(33,1))^2 + (x(32,1) - x(34,1))^2);
REST_LENGTH = LAMBDA_MATRIX(7,8);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(31,1) = (1-GAMMA)*IC(31,1)+GAMMA*IC(33,1);
	new_state_vector(32,1) = (1-GAMMA)*IC(32,1)+GAMMA*IC(34,1);
end;

DISTANCE = sqrt((x(33,1) - x(35,1))^2 + (x(34,1) - x(36,1))^2);
REST_LENGTH = LAMBDA_MATRIX(8,9);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(33,1) = (1-GAMMA)*IC(33,1)+GAMMA*IC(35,1);
	new_state_vector(34,1) = (1-GAMMA)*IC(34,1)+GAMMA*IC(36,1);
end;

DISTANCE = sqrt((x(21,1) - x(19,1))^2 + (x(22,1) - x(20,1))^2);
REST_LENGTH = LAMBDA_MATRIX(2,1);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(21,1) = (1-GAMMA)*IC(21,1)+GAMMA*IC(19,1);
	new_state_vector(22,1) = (1-GAMMA)*IC(22,1)+GAMMA*IC(20,1);
end;

DISTANCE = sqrt((x(25,1) - x(19,1))^2 + (x(26,1) - x(20,1))^2);
REST_LENGTH = LAMBDA_MATRIX(4,1);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(25,1) = (1-GAMMA)*IC(25,1)+GAMMA*IC(19,1);
	new_state_vector(26,1) = (1-GAMMA)*IC(26,1)+GAMMA*IC(20,1);
end;

DISTANCE = sqrt((x(31,1) - x(25,1))^2 + (x(32,1) - x(26,1))^2);
REST_LENGTH = LAMBDA_MATRIX(7,4);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(31,1) = (1-GAMMA)*IC(31,1)+GAMMA*IC(25,1);
	new_state_vector(32,1) = (1-GAMMA)*IC(32,1)+GAMMA*IC(26,1);
end;

DISTANCE = sqrt((x(27,1) - x(25,1))^2 + (x(28,1) - x(26,1))^2);
REST_LENGTH = LAMBDA_MATRIX(5,4);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(27,1) = (1-GAMMA)*IC(27,1)+GAMMA*IC(25,1);
	new_state_vector(28,1) = (1-GAMMA)*IC(28,1)+GAMMA*IC(26,1);
end;

DISTANCE = sqrt((x(23,1) - x(21,1))^2 + (x(24,1) - x(22,1))^2);
REST_LENGTH = LAMBDA_MATRIX(3,2);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(23,1) = (1-GAMMA)*IC(23,1)+GAMMA*IC(21,1);
	new_state_vector(24,1) = (1-GAMMA)*IC(24,1)+GAMMA*IC(22,1);
end;

DISTANCE = sqrt((x(27,1) - x(21,1))^2 + (x(28,1) - x(22,1))^2);
REST_LENGTH = LAMBDA_MATRIX(5,2);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(27,1) = (1-GAMMA)*IC(27,1)+GAMMA*IC(21,1);
	new_state_vector(28,1) = (1-GAMMA)*IC(28,1)+GAMMA*IC(22,1);
end;

DISTANCE = sqrt((x(29,1) - x(27,1))^2 + (x(30,1) - x(28,1))^2);
REST_LENGTH = LAMBDA_MATRIX(6,5);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(29,1) = (1-GAMMA)*IC(29,1)+GAMMA*IC(27,1);
	new_state_vector(30,1) = (1-GAMMA)*IC(30,1)+GAMMA*IC(28,1);
end;

DISTANCE = sqrt((x(33,1) - x(27,1))^2 + (x(34,1) - x(28,1))^2);
REST_LENGTH = LAMBDA_MATRIX(8,5);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(33,1) = (1-GAMMA)*IC(33,1)+GAMMA*IC(27,1);
	new_state_vector(34,1) = (1-GAMMA)*IC(34,1)+GAMMA*IC(28,1);
end;

DISTANCE = sqrt((x(29,1) - x(23,1))^2 + (x(30,1) - x(24,1))^2);
REST_LENGTH = LAMBDA_MATRIX(6,3);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(29,1) = (1-GAMMA)*IC(29,1)+GAMMA*IC(23,1);
	new_state_vector(30,1) = (1-GAMMA)*IC(30,1)+GAMMA*IC(24,1);
end;

DISTANCE = sqrt((x(35,1) - x(29,1))^2 + (x(36,1) - x(30,1))^2);
REST_LENGTH = LAMBDA_MATRIX(9,6);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(35,1) = (1-GAMMA)*IC(35,1)+GAMMA*IC(29,1);
	new_state_vector(36,1) = (1-GAMMA)*IC(36,1)+GAMMA*IC(30,1);
end;

DISTANCE = sqrt((x(33,1) - x(31,1))^2 + (x(34,1) - x(32,1))^2);
REST_LENGTH = LAMBDA_MATRIX(8,7);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(33,1) = (1-GAMMA)*IC(33,1)+GAMMA*IC(31,1);
	new_state_vector(34,1) = (1-GAMMA)*IC(34,1)+GAMMA*IC(32,1);
end;

DISTANCE = sqrt((x(35,1) - x(33,1))^2 + (x(36,1) - x(34,1))^2);
REST_LENGTH = LAMBDA_MATRIX(9,8);
if (DISTANCE<ALPHA*REST_LENGTH)
	new_state_vector(35,1) = (1-GAMMA)*IC(35,1)+GAMMA*IC(33,1);
	new_state_vector(36,1) = (1-GAMMA)*IC(36,1)+GAMMA*IC(34,1);
end;

return;
