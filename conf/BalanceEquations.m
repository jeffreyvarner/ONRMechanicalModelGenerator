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
delta_state_vector(1,1) = -1*SPRING_MATRIX(1,2)*ALPHA_MATRIX(1,2)*(x(7,1) - x(9,1)) + DAMPING_MATRIX(1,2)*(x(3,1) - x(1,1)) + EXT_FORCING(1,1);
delta_state_vector(2,1) = -1*SPRING_MATRIX(1,2)*ALPHA_MATRIX(1,2)*(x(8,1) - x(10,1)) + DAMPING_MATRIX(1,2)*(x(4,1) - x(2,1)) + EXT_FORCING(2,1);
delta_state_vector(3,1) = -1*SPRING_MATRIX(2,3)*ALPHA_MATRIX(2,3)*(x(9,1) - x(11,1)) + DAMPING_MATRIX(2,3)*(x(5,1) - x(3,1)) + EXT_FORCING(3,1);
delta_state_vector(4,1) = -1*SPRING_MATRIX(2,3)*ALPHA_MATRIX(2,3)*(x(10,1) - x(12,1)) + DAMPING_MATRIX(2,3)*(x(6,1) - x(4,1)) + EXT_FORCING(4,1);
delta_state_vector(5,1) = -1*SPRING_MATRIX(3,1)*ALPHA_MATRIX(3,1)*(x(11,1) - x(7,1)) + DAMPING_MATRIX(3,1)*(x(1,1) - x(5,1)) + EXT_FORCING(5,1);
delta_state_vector(6,1) = -1*SPRING_MATRIX(3,1)*ALPHA_MATRIX(3,1)*(x(12,1) - x(8,1)) + DAMPING_MATRIX(3,1)*(x(2,1) - x(6,1)) + EXT_FORCING(6,1);

% Node balances - 
delta_state_vector(7,1) = x(1,1);
delta_state_vector(8,1) = x(2,1);
delta_state_vector(9,1) = x(3,1);
delta_state_vector(10,1) = x(4,1);
delta_state_vector(11,1) = x(5,1);
delta_state_vector(12,1) = x(6,1);

% Correct the fixed balances - 
delta_state_vector(9,1) = 0.0;
delta_state_vector(10,1) = 0.0;
delta_state_vector(11,1) = 0.0;
delta_state_vector(12,1) = 0.0;

return
