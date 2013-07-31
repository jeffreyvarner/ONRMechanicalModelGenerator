function [EXT_FORCING] = CalculateExternalForcing(t,x,DF)
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

% Define the default forcing vector - 
NUMBER_OF_STATES = 0.5*(DF.NUMBER_OF_STATES);
EXT_FORCING = zeros(NUMBER_OF_STATES,1);

% Your problem specific force profile goes here. 
if (t>2)
	%EXT_FORCING(398,1) = -0.75*exp(2 - t);
	%EXT_FORCING(844,1) = -0.75*exp(2 - t);
	EXT_FORCING(41,1) = 0.75*exp(2 - t);
end;

return;
