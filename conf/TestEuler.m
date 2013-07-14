

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
	
	% Calculate the next time step -
	DXDT = BalanceEquations(XCURRENT,time_value,DF);
	XNEXT = XCURRENT + Ts*DXDT;

	% Enforce constraints on the state vector - 
	XNEXT = CalculatePositionConstraints(time_value,XNEXT,DF);

	% Capture -
	XARR = [XARR XNEXT];
	
	% update -
	XCURRENT = XNEXT;
end;