
% Load the data -
DATA = load('TEST_SIM_DATA.dat');

% What is the size of the data array?
[NROWS,NCOLS] = size(DATA);

% Setup -
NUMBER_OF_POINTS = 9;
NUMBER_OF_TIMESTEPS = NCOLS;

% draw each frame to the screen -
local_counter = 1;
for frame_index = 1:10:NUMBER_OF_TIMESTEPS
	
	
	
	figure;
	axis([-0.2 1.2 -0.2 1.5]);
	axis off;
	hold on;
	
	% plot the points -
	for point_index = 1:NUMBER_OF_POINTS
		
		xindex = 2*point_index - 1;
		yindex = 2*point_index;
		
		XVALUE = DATA(xindex,frame_index);
		YVALUE = DATA(yindex,frame_index);
		
		plot(XVALUE,YVALUE,'ro');
	end;
	
	% add text -
	msg = ['Time step = ',num2str(frame_index)];
	text(0,1.3,msg);
	
	hold off;
	
	M(local_counter) = getframe;
	
	frame_index
	close;
	
	local_counter = local_counter + 1;
		
end;

% write video to file?
figure;
axis([-0.2 1.2 -0.2 1.5]);
axis off;
myObj = VideoWriter('test.avi','Uncompressed AVI');
open(myObj);
writeVideo(myObj,M);
close(myObj);
