function [delta_state_vector] = BalanceEquations(t,x,DF)
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

% Calculate the ALPHA matrix - 
ALPHA_MATRIX = CalculateAlphaMatrix(x,DF);

% Velocity balances - 
delta_state_array(1,1) = SPRING_MATRIX(1,2)*ALPHA_MATRIX(1,2)*(x(7,1) - x(9,1)) + DAMPING_MATRIX(1,2)*(x(3,1) - x(1,1));
delta_state_array(2,1) = SPRING_MATRIX(1,2)*ALPHA_MATRIX(1,2)*(x(8,1) - x(10,1)) + DAMPING_MATRIX(1,2)*(x(4,1) - x(2,1));
delta_state_array(3,1) = SPRING_MATRIX(2,3)*ALPHA_MATRIX(2,3)*(x(9,1) - x(11,1)) + DAMPING_MATRIX(2,3)*(x(5,1) - x(3,1));
delta_state_array(4,1) = SPRING_MATRIX(2,3)*ALPHA_MATRIX(2,3)*(x(10,1) - x(12,1)) + DAMPING_MATRIX(2,3)*(x(6,1) - x(4,1));
delta_state_array(5,1) = SPRING_MATRIX(3,1)*ALPHA_MATRIX(3,1)*(x(11,1) - x(7,1)) + DAMPING_MATRIX(3,1)*(x(1,1) - x(5,1));
delta_state_array(6,1) = SPRING_MATRIX(3,1)*ALPHA_MATRIX(3,1)*(x(12,1) - x(8,1)) + DAMPING_MATRIX(3,1)*(x(2,1) - x(6,1));

% Node balances - 
delta_state_vector(7,1) = x(1,1);
delta_state_vector(8,1) = x(2,1);
delta_state_vector(9,1) = x(3,1);
delta_state_vector(10,1) = x(4,1);
delta_state_vector(11,1) = x(5,1);
delta_state_vector(12,1) = x(6,1);

return
