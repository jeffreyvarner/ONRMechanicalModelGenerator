% Script to test the code -
TSTART = 0.0;
TSTOP = 100.0;
Ts = 1.0;
TSIM = TSTART:Ts:TSTOP;

% Load the DF - 
DF = DataFile(TSTART,TSTOP,Ts,[]);

% Get the initial condition -
IC = DF.INITIAL_CONDITION_VECTOR;

pFunc = @(t,x)BalanceEquations(t,x,DF);
[T,X] = ode15s(pFunc,TSIM,IC);