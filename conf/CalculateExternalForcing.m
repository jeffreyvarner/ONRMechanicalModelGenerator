function [EXT_FORCING] = CalculateExternalForcing(t,x,DF)
	
	EXT_FORCING = zeros(6,1);
	if (t>10 && t<30)
		EXT_FORCING(1,1) = 1e-3;
	end;
	
return;