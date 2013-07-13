function [delta_state_vector] = BalanceEquations(x,t,DF)
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
% BalanceEquations.m 
% BalanceEquations describes the system of springs and dashpots.
% Time and state is passed in along with an instance of the DataFile. 
% ------------------------------------------------------------------------------------- %

% Define the state vector - 
NUMBER_OF_STATES = DF.NUMBER_OF_STATES;
delta_state_vector = zeros(NUMBER_OF_STATES,1);

% Get the parameter matricies - 
SPRING_MATRIX = DF.SPRING_PARAMETER_MATRIX;
DAMPING_MATRIX = DF.DAMPING_PARAMETER_MATRIX;
LAMBDA_MATRIX = DF.LAMBDA_PARAMETER_MATRIX;

% Calculate the ALPHA matrix - 
ALPHA_MATRIX = CalculateAlphaMatrix(x,LAMBDA_MATRIX,DF);

% Calculate external forces (input) - 
EXT_FORCING = CalculateExternalForcing(t,x,DF);

% Velocity balances - 
delta_state_vector(1,1) = -1*SPRING_MATRIX(1,5)*ALPHA_MATRIX(1,5)*(x(19,1) - x(27,1)) + DAMPING_MATRIX(1,5)*(x(9,1) - x(1,1)) + -1*SPRING_MATRIX(1,5)*ALPHA_MATRIX(1,5)*(x(19,1) - x(27,1)) + DAMPING_MATRIX(1,5)*(x(9,1) - x(1,1)) + EXT_FORCING(1,1);
delta_state_vector(2,1) = -1*SPRING_MATRIX(1,5)*ALPHA_MATRIX(1,5)*(x(20,1) - x(28,1)) + DAMPING_MATRIX(1,5)*(x(10,1) - x(2,1)) + -1*SPRING_MATRIX(1,5)*ALPHA_MATRIX(1,5)*(x(20,1) - x(28,1)) + DAMPING_MATRIX(1,5)*(x(10,1) - x(2,1)) + EXT_FORCING(2,1);
delta_state_vector(3,1) = -1*SPRING_MATRIX(2,1)*ALPHA_MATRIX(2,1)*(x(21,1) - x(19,1)) + DAMPING_MATRIX(2,1)*(x(1,1) - x(3,1)) + -1*SPRING_MATRIX(2,5)*ALPHA_MATRIX(2,5)*(x(21,1) - x(27,1)) + DAMPING_MATRIX(2,5)*(x(9,1) - x(3,1)) + EXT_FORCING(3,1);
delta_state_vector(4,1) = -1*SPRING_MATRIX(2,1)*ALPHA_MATRIX(2,1)*(x(22,1) - x(20,1)) + DAMPING_MATRIX(2,1)*(x(2,1) - x(4,1)) + -1*SPRING_MATRIX(2,5)*ALPHA_MATRIX(2,5)*(x(22,1) - x(28,1)) + DAMPING_MATRIX(2,5)*(x(10,1) - x(4,1)) + EXT_FORCING(4,1);
delta_state_vector(5,1) = -1*SPRING_MATRIX(3,2)*ALPHA_MATRIX(3,2)*(x(23,1) - x(21,1)) + DAMPING_MATRIX(3,2)*(x(3,1) - x(5,1)) + -1*SPRING_MATRIX(3,5)*ALPHA_MATRIX(3,5)*(x(23,1) - x(27,1)) + DAMPING_MATRIX(3,5)*(x(9,1) - x(5,1)) + EXT_FORCING(5,1);
delta_state_vector(6,1) = -1*SPRING_MATRIX(3,2)*ALPHA_MATRIX(3,2)*(x(24,1) - x(22,1)) + DAMPING_MATRIX(3,2)*(x(4,1) - x(6,1)) + -1*SPRING_MATRIX(3,5)*ALPHA_MATRIX(3,5)*(x(24,1) - x(28,1)) + DAMPING_MATRIX(3,5)*(x(10,1) - x(6,1)) + EXT_FORCING(6,1);
delta_state_vector(7,1) = -1*SPRING_MATRIX(4,1)*ALPHA_MATRIX(4,1)*(x(25,1) - x(19,1)) + DAMPING_MATRIX(4,1)*(x(1,1) - x(7,1)) + -1*SPRING_MATRIX(4,5)*ALPHA_MATRIX(4,5)*(x(25,1) - x(27,1)) + DAMPING_MATRIX(4,5)*(x(9,1) - x(7,1)) + EXT_FORCING(7,1);
delta_state_vector(8,1) = -1*SPRING_MATRIX(4,1)*ALPHA_MATRIX(4,1)*(x(26,1) - x(20,1)) + DAMPING_MATRIX(4,1)*(x(2,1) - x(8,1)) + -1*SPRING_MATRIX(4,5)*ALPHA_MATRIX(4,5)*(x(26,1) - x(28,1)) + DAMPING_MATRIX(4,5)*(x(10,1) - x(8,1)) + EXT_FORCING(8,1);
delta_state_vector(9,1) = -1*SPRING_MATRIX(5,4)*ALPHA_MATRIX(5,4)*(x(27,1) - x(25,1)) + DAMPING_MATRIX(5,4)*(x(7,1) - x(9,1)) + -1*SPRING_MATRIX(5,2)*ALPHA_MATRIX(5,2)*(x(27,1) - x(21,1)) + DAMPING_MATRIX(5,2)*(x(3,1) - x(9,1)) + -1*SPRING_MATRIX(5,3)*ALPHA_MATRIX(5,3)*(x(27,1) - x(23,1)) + DAMPING_MATRIX(5,3)*(x(5,1) - x(9,1)) + -1*SPRING_MATRIX(5,6)*ALPHA_MATRIX(5,6)*(x(27,1) - x(29,1)) + DAMPING_MATRIX(5,6)*(x(11,1) - x(9,1)) + -1*SPRING_MATRIX(5,7)*ALPHA_MATRIX(5,7)*(x(27,1) - x(31,1)) + DAMPING_MATRIX(5,7)*(x(13,1) - x(9,1)) + -1*SPRING_MATRIX(5,8)*ALPHA_MATRIX(5,8)*(x(27,1) - x(33,1)) + DAMPING_MATRIX(5,8)*(x(15,1) - x(9,1)) + -1*SPRING_MATRIX(5,9)*ALPHA_MATRIX(5,9)*(x(27,1) - x(35,1)) + DAMPING_MATRIX(5,9)*(x(17,1) - x(9,1)) + -1*SPRING_MATRIX(5,6)*ALPHA_MATRIX(5,6)*(x(27,1) - x(29,1)) + DAMPING_MATRIX(5,6)*(x(11,1) - x(9,1)) + EXT_FORCING(9,1);
delta_state_vector(10,1) = -1*SPRING_MATRIX(5,4)*ALPHA_MATRIX(5,4)*(x(28,1) - x(26,1)) + DAMPING_MATRIX(5,4)*(x(8,1) - x(10,1)) + -1*SPRING_MATRIX(5,2)*ALPHA_MATRIX(5,2)*(x(28,1) - x(22,1)) + DAMPING_MATRIX(5,2)*(x(4,1) - x(10,1)) + -1*SPRING_MATRIX(5,3)*ALPHA_MATRIX(5,3)*(x(28,1) - x(24,1)) + DAMPING_MATRIX(5,3)*(x(6,1) - x(10,1)) + -1*SPRING_MATRIX(5,6)*ALPHA_MATRIX(5,6)*(x(28,1) - x(30,1)) + DAMPING_MATRIX(5,6)*(x(12,1) - x(10,1)) + -1*SPRING_MATRIX(5,7)*ALPHA_MATRIX(5,7)*(x(28,1) - x(32,1)) + DAMPING_MATRIX(5,7)*(x(14,1) - x(10,1)) + -1*SPRING_MATRIX(5,8)*ALPHA_MATRIX(5,8)*(x(28,1) - x(34,1)) + DAMPING_MATRIX(5,8)*(x(16,1) - x(10,1)) + -1*SPRING_MATRIX(5,9)*ALPHA_MATRIX(5,9)*(x(28,1) - x(36,1)) + DAMPING_MATRIX(5,9)*(x(18,1) - x(10,1)) + -1*SPRING_MATRIX(5,6)*ALPHA_MATRIX(5,6)*(x(28,1) - x(30,1)) + DAMPING_MATRIX(5,6)*(x(12,1) - x(10,1)) + EXT_FORCING(10,1);
delta_state_vector(11,1) = -1*SPRING_MATRIX(6,3)*ALPHA_MATRIX(6,3)*(x(29,1) - x(23,1)) + DAMPING_MATRIX(6,3)*(x(5,1) - x(11,1)) + -1*SPRING_MATRIX(6,9)*ALPHA_MATRIX(6,9)*(x(29,1) - x(35,1)) + DAMPING_MATRIX(6,9)*(x(17,1) - x(11,1)) + EXT_FORCING(11,1);
delta_state_vector(12,1) = -1*SPRING_MATRIX(6,3)*ALPHA_MATRIX(6,3)*(x(30,1) - x(24,1)) + DAMPING_MATRIX(6,3)*(x(6,1) - x(12,1)) + -1*SPRING_MATRIX(6,9)*ALPHA_MATRIX(6,9)*(x(30,1) - x(36,1)) + DAMPING_MATRIX(6,9)*(x(18,1) - x(12,1)) + EXT_FORCING(12,1);
delta_state_vector(13,1) = -1*SPRING_MATRIX(7,4)*ALPHA_MATRIX(7,4)*(x(31,1) - x(25,1)) + DAMPING_MATRIX(7,4)*(x(7,1) - x(13,1)) + -1*SPRING_MATRIX(7,5)*ALPHA_MATRIX(7,5)*(x(31,1) - x(27,1)) + DAMPING_MATRIX(7,5)*(x(9,1) - x(13,1)) + EXT_FORCING(13,1);
delta_state_vector(14,1) = -1*SPRING_MATRIX(7,4)*ALPHA_MATRIX(7,4)*(x(32,1) - x(26,1)) + DAMPING_MATRIX(7,4)*(x(8,1) - x(14,1)) + -1*SPRING_MATRIX(7,5)*ALPHA_MATRIX(7,5)*(x(32,1) - x(28,1)) + DAMPING_MATRIX(7,5)*(x(10,1) - x(14,1)) + EXT_FORCING(14,1);
delta_state_vector(15,1) = -1*SPRING_MATRIX(8,7)*ALPHA_MATRIX(8,7)*(x(33,1) - x(31,1)) + DAMPING_MATRIX(8,7)*(x(13,1) - x(15,1)) + -1*SPRING_MATRIX(8,5)*ALPHA_MATRIX(8,5)*(x(33,1) - x(27,1)) + DAMPING_MATRIX(8,5)*(x(9,1) - x(15,1)) + EXT_FORCING(15,1);
delta_state_vector(16,1) = -1*SPRING_MATRIX(8,7)*ALPHA_MATRIX(8,7)*(x(34,1) - x(32,1)) + DAMPING_MATRIX(8,7)*(x(14,1) - x(16,1)) + -1*SPRING_MATRIX(8,5)*ALPHA_MATRIX(8,5)*(x(34,1) - x(28,1)) + DAMPING_MATRIX(8,5)*(x(10,1) - x(16,1)) + EXT_FORCING(16,1);
delta_state_vector(17,1) = -1*SPRING_MATRIX(9,8)*ALPHA_MATRIX(9,8)*(x(35,1) - x(33,1)) + DAMPING_MATRIX(9,8)*(x(15,1) - x(17,1)) + -1*SPRING_MATRIX(9,5)*ALPHA_MATRIX(9,5)*(x(35,1) - x(27,1)) + DAMPING_MATRIX(9,5)*(x(9,1) - x(17,1)) + EXT_FORCING(17,1);
delta_state_vector(18,1) = -1*SPRING_MATRIX(9,8)*ALPHA_MATRIX(9,8)*(x(36,1) - x(34,1)) + DAMPING_MATRIX(9,8)*(x(16,1) - x(18,1)) + -1*SPRING_MATRIX(9,5)*ALPHA_MATRIX(9,5)*(x(36,1) - x(28,1)) + DAMPING_MATRIX(9,5)*(x(10,1) - x(18,1)) + EXT_FORCING(18,1);

% Node balances - 
delta_state_vector(19,1) = x(1,1);
delta_state_vector(20,1) = x(2,1);
delta_state_vector(21,1) = x(3,1);
delta_state_vector(22,1) = x(4,1);
delta_state_vector(23,1) = x(5,1);
delta_state_vector(24,1) = x(6,1);
delta_state_vector(25,1) = x(7,1);
delta_state_vector(26,1) = x(8,1);
delta_state_vector(27,1) = x(9,1);
delta_state_vector(28,1) = x(10,1);
delta_state_vector(29,1) = x(11,1);
delta_state_vector(30,1) = x(12,1);
delta_state_vector(31,1) = x(13,1);
delta_state_vector(32,1) = x(14,1);
delta_state_vector(33,1) = x(15,1);
delta_state_vector(34,1) = x(16,1);
delta_state_vector(35,1) = x(17,1);
delta_state_vector(36,1) = x(18,1);

% Correct the fixed balances - 
delta_state_vector(31,1) = 0.0;
delta_state_vector(32,1) = 0.0;
delta_state_vector(33,1) = 0.0;
delta_state_vector(34,1) = 0.0;
delta_state_vector(35,1) = 0.0;
delta_state_vector(36,1) = 0.0;

return
