
% Load the data -
DATA = load('SIMULATION_OUTPUT_SHEAR.dat');
DATA = transpose(DATA);

% What is the size of the data array?
[NROWS,NCOLS] = size(DATA);

% Load the data file -
DF = DataFile(0,0,0,[]);
MESH = DF.MESH_ADJANCEY_STRUCT;

% Setup -
NUMBER_OF_POINTS = 516;
NUMBER_OF_TIMESTEPS = NCOLS;

% draw each frame to the screen -
local_counter = 1;
for frame_index = 1:10:NUMBER_OF_TIMESTEPS
	
	
	
	figure;
	axis([-0.1 1.1 -0.1 1.2]);
	axis off;
	set(gcf,'Color','k');
	hold on;
	
	% plot the points -
	for point_index = 1:NUMBER_OF_POINTS
		
		xindex = 2*point_index - 1;
		yindex = 2*point_index;
		
		XVALUE = DATA(xindex,frame_index);
		YVALUE = DATA(yindex,frame_index);
		
		
		
		% Draw the lines -
		CONNECTION_ARRAY = MESH.NODE(point_index).edge_array;
		NEDGES = length(CONNECTION_ARRAY);
		for edge_index = 1:NEDGES
			
			% child node -
			child_node_index = CONNECTION_ARRAY(edge_index);
			xindex_child_index = 2*child_node_index - 1;
			yindex_child_index = 2*child_node_index;
			
			XVALUE_CHILD = DATA(xindex_child_index,frame_index);
			YVALUE_CHILD = DATA(yindex_child_index,frame_index);
			
			plot([XVALUE XVALUE_CHILD],[YVALUE YVALUE_CHILD],'Color',[0.4 0.4 0.4]);
		end;
		
		plot(XVALUE,YVALUE,'y.');
	end;
	
	% add text -
	msg = ['Time step = ',num2str(frame_index)];
	th = text(0,1.1,msg);
	set(th,'Color','w');
	
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
myObj = VideoWriter('test_v2.avi','Uncompressed AVI');
myObj.FrameRate = 10;
open(myObj);
writeVideo(myObj,M);
close(myObj);
