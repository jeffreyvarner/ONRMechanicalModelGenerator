
% Script to test the code -
TSTART = 0.0;
TSTOP = 100.0;
Ts = 0.05;
TSIM = TSTART:Ts:TSTOP;
NSTEPS = length(TSIM);

% Load the DF - 
DF = DataFile(TSTART,TSTOP,Ts,[]);

% Get the initial condition -
IC = DF.INITIAL_CONDITION_VECTOR;
XARR = [IC];
XCURRENT = IC;
for time_step_index = 1:NSTEPS - 1
	
	% Current time -
	time_value = TSIM(time_step_index);
	
	% Take a half-step 
	DXDT = BalanceEquations(XCURRENT,time_value,DF);
	XNEXT_HALF = XCURRENT + (Ts/2)*DXDT;
	
	% Calculate the next time step -
	DXDT = BalanceEquations(XNEXT_HALF,(time_value + Ts/2),DF);
	XNEXT = XCURRENT + Ts*DXDT;

	% Enforce constraints on the state vector - 
	%XNEXT = CalculatePositionConstraints(time_value,XNEXT,DF);
	XNEXT = CalculateNodeConstraints(time_value,XNEXT,DF);

	if (time_value>22)
		%keyboard;
	end;

	% Capture -
	XARR = [XARR XNEXT];
	
	% update -
	XCURRENT = XNEXT;
	
	time_value
end;