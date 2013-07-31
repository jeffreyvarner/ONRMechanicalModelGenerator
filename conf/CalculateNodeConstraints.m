function [new_state_vector] = CalculateNodeConstraints(t,x,DF)

	% Initialize new state vector with old state - 
	new_state_vector = x;

	% Get the nominal length and spring matrix - 
	LAMBDA_MATRIX = DF.LAMBDA_PARAMETER_MATRIX;
	SPRING_MATRIX = DF.SPRING_PARAMETER_MATRIX;
	IC = DF.INITIAL_CONDITION_VECTOR;
	NUMBER_OF_NODES = DF.NUMBER_OF_NODES;
	MESH = DF.MESH_ADJANCEY_STRUCT;

	% where do the positions start in the state vector?
	INDEX_START_POSITIONS = 2*NUMBER_OF_NODES;

	% Width of window - 
	ALPHA = 0.1;
	BETA = 10.0;
	GAMMA = 0.55;
	NCONSTRAINT_TRIALS = 10;
	
	for trial_index = 1:NCONSTRAINT_TRIALS
		for node_index = 1:NUMBER_OF_NODES
		
			if (MESH.NODE(node_index).fixed == 0)
					% Get the connections -
					connection_array = MESH.NODE(node_index).edge_array;

					% How many edges do we have?
					NUMBER_OF_LOCAL_EDGES = length(connection_array);

					% what is my node position?
					x_coordinate_index_parent_node = 2*node_index + INDEX_START_POSITIONS - 1;
					y_coordinate_index_parent_node = 2*node_index + INDEX_START_POSITIONS;

					my_parent_x_position = new_state_vector(x_coordinate_index_parent_node,1);
					my_parent_y_position = new_state_vector(y_coordinate_index_parent_node,1);

					% iterate through each edge to check if we violate the length constraints?
					for local_edge_counter = 1:NUMBER_OF_LOCAL_EDGES

						% Get the index of the node we are connected to -
						index_connected_node = connection_array(local_edge_counter);
						if (MESH.NODE(index_connected_node).fixed == 0)
						
							% Calculate the distance - 
							x_coordinate_index_child_node = 2*index_connected_node + INDEX_START_POSITIONS - 1;
							y_coordinate_index_child_node = 2*index_connected_node + INDEX_START_POSITIONS;

							my_child_x_position = new_state_vector(x_coordinate_index_child_node,1);
							my_child_y_position = new_state_vector(y_coordinate_index_child_node,1);

							distance = sqrt((my_parent_x_position - my_child_x_position)^2 + (my_parent_y_position - my_child_y_position)^2);
							MINIMUM_DISTANCE_CONSTRAINT = ALPHA*LAMBDA_MATRIX(node_index,index_connected_node);

							% Do we violate the edge constraint?
							if (distance<MINIMUM_DISTANCE_CONSTRAINT)

								% ok, we violate the constraint.
								% move *each* point by a random amount along the line connecting them
								SIGMA = rand;
								ALPHA_1 = -1*SIGMA;
								ALPHA_2 = 1 + SIGMA;

								% adjust parent_node (point_1)
								new_x_point_1 = (1 - ALPHA_1)*my_parent_x_position + ALPHA_1*my_child_x_position;
								new_y_point_1 = (1 - ALPHA_1)*my_parent_y_position + ALPHA_1*my_child_y_position;

								% adjust child_node (point 2)
								new_x_point_2 = (1 - ALPHA_2)*my_parent_x_position + ALPHA_2*my_child_x_position;
								new_y_point_2 = (1 - ALPHA_2)*my_parent_y_position + ALPHA_2*my_child_y_position;

								% update the state vector -
								new_state_vector(x_coordinate_index_parent_node,1) = new_x_point_1;
								new_state_vector(y_coordinate_index_parent_node,1) = new_y_point_1;
								new_state_vector(x_coordinate_index_child_node,1) =  new_x_point_2;
								new_state_vector(y_coordinate_index_child_node,1) =  new_y_point_2;

								%keyboard;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
return;