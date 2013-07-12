function DF = DataFile(TSTART,TSTOP,Ts,INDEX)
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
% DataFile.m 
% DataFile holds the parameters and initial conditions for the cFL model. This struct
% is passed around to the various functions and *can* be modfied in memory.
% ------------------------------------------------------------------------------------- %

% Dimension of the system - 
NUMBER_OF_STATES = 12;
NUMBER_OF_EDGES = 3;

% Load the spring and damping constant array - 
SPRING_MATRIX = load('SPRING_MATRIX.dat');
DAMPING_MATRIX = load('DAMPING_MATRIX.dat');


% Initial condition vector (velocity | node positions)
INITIAL_CONDITION_VECTOR = [
	0.000000	;% 	 1 	 x_value_velocity_node_1
	0.000000	;% 	 2 	 y_value_velocity_node_1
	0.000000	;% 	 3 	 x_value_velocity_node_2
	0.000000	;% 	 4 	 y_value_velocity_node_2
	0.000000	;% 	 5 	 x_value_velocity_node_3
	0.000000	;% 	 6 	 y_value_velocity_node_3
	-1.0000000e+00	;% 	 7 	 x_value_node_1
	-1.0000000e+00	;% 	 8 	 y_value_node_1
	-1.0000000e+00	;% 	 9 	 x_value_node_2
	1.0000000e+00	;% 	 10 	 y_value_node_2
	-1.0000000e+00	;% 	 11 	 x_value_node_3
	4.7666026e-01	;% 	 12 	 y_value_node_3
];

% Calculate LAMBDA_MATRIX - 
LAMBDA_MATRIX = CalculateLambdaMatrix(INITIAL_CONDITION_VECTOR,NUMBER_OF_EDGES);


% =========== DO NOT EDIT BELOW THIS LINE ================ %
DF.SPRING_PARAMETER_MATRIX = SPRING_MATRIX;
DF.DAMPING_PARAMETER_MATRIX = DAMPING_MATRIX;
DF.LAMBDA_PARAMETER_MATRIX = LAMBDA_MATRIX;
DF.INITIAL_CONDITION_VECTOR = INITIAL_CONDITION_VECTOR;
DF.NUMBER_OF_EDGES = NUMBER_OF_EDGES;
DF.NUMBER_OF_STATES = NUMBER_OF_STATES;
% ======================================================== %
return;
