//
//  VLOctaveLanguageAdaptor.m
//  ONRMechanicalModelGenerator
//
//  Created by Jeffrey Varner on 7/8/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLOctaveLanguageAdaptor.h"

@interface VLOctaveLanguageAdaptor ()

// private helpers
-(NSString *)buildVelocityBalancesFromSBMLTree:(NSXMLDocument *)sbmlTree;
-(NSString *)buildNodeBalancesFromSBMLTree:(NSXMLDocument *)sbmlTree;

-(NSString *)buildHeaderBlockFromBlueprintTree:(NSXMLDocument *)blueprintTree
                                   andSBMLTree:(NSXMLDocument *)sbmlTree;


@end

@implementation VLOctaveLanguageAdaptor

-(NSString *)generateBalanceEquationsBufferWithOptions:(NSDictionary *)options
{
    // get the options from the dictionary -
    NSXMLDocument *model_tree = [options objectForKey:kXMLModelTree];
    NSXMLDocument *transformation_tree = [options objectForKey:kXMLTransformationTree];

    // build the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    // header -
    [buffer appendString:@"function [delta_state_vector] = BalanceEquations(t,x,DF)\n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendString:@"% Copyright (c) 2013 Varnerlab,\n"];
    [buffer appendString:@"% School of Chemical and Biomolecular Engineering,\n"];
    [buffer appendString:@"% Cornell University, Ithaca NY 14853 USA.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% Permission is hereby granted, free of charge, to any person obtaining a copy\n"];
    [buffer appendString:@"% of this software and associated documentation files (the \"Software\"), to deal\n"];
    [buffer appendString:@"% in the Software without restriction, including without limitation the rights\n"];
    [buffer appendString:@"% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n"];
    [buffer appendString:@"% copies of the Software, and to permit persons to whom the Software is\n"];
    [buffer appendString:@"% furnished to do so, subject to the following conditions:\n"];
    [buffer appendString:@"% The above copyright notice and this permission notice shall be included in\n"];
    [buffer appendString:@"% all copies or substantial portions of the Software.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n"];
    [buffer appendString:@"% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"];
    [buffer appendString:@"% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"];
    [buffer appendString:@"% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"];
    [buffer appendString:@"% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n"];
    [buffer appendString:@"% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n"];
    [buffer appendString:@"% THE SOFTWARE.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% BalanceEquations.m \n"];
    [buffer appendString:@"% BalanceEquations describes the system of springs and dashpots.\n"];
    [buffer appendString:@"% Time and state is passed in along with an instance of the DataFile. \n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendFormat:@"\n"];
    [buffer appendString:@"% Define the state vector - \n"];
    [buffer appendString:@"NUMBER_OF_STATES = DF.NUMBER_OF_STATES;\n"];
    [buffer appendString:@"delta_state_vector = zeros(NUMBER_OF_STATES,1);\n"];
    [buffer appendString:@"\n"];
    
    // alpha's
    [buffer appendString:@"% Get the parameter matricies - \n"];
    [buffer appendString:@"SPRING_MATRIX = DF.SPRING_PARAMETER_MATRIX;\n"];
    [buffer appendString:@"DAMPING_MATRIX = DF.DAMPING_PARAMETER_MATRIX;\n"];
    [buffer appendString:@"LAMBDA_MATRIX = DF.LAMBDA_PARAMETER_MATRIX;\n"];
    [buffer appendString:@"\n"];
    [buffer appendString:@"% Calculate the ALPHA matrix - \n"];
    [buffer appendString:@"ALPHA_MATRIX = CalculateAlphaMatrix(x,LAMBDA_MATRIX);\n"];
    [buffer appendString:@"\n"];
    
    // write velocity balances -
    [buffer appendString:@"% Velocity balances - \n"];
    NSString *velocity_balances = [self buildVelocityBalancesFromSBMLTree:model_tree];
    [buffer appendString:velocity_balances];
    [buffer appendString:@"\n"];
    
    // write node balances -
    [buffer appendString:@"% Node balances - \n"];
    NSString *node_balances = [self buildNodeBalancesFromSBMLTree:model_tree];
    [buffer appendString:node_balances];
    [buffer appendString:@"\n"];
    
    // footer -
    [buffer appendString:@"return\n"];
    
    // return -
    return [NSString stringWithString:buffer];
}

-(NSString *)generateDataFileBufferWithOptions:(NSDictionary *)options
{
    // get the options from the dictionary -
    NSXMLDocument *model_tree = [options objectForKey:kXMLModelTree];
    NSXMLDocument *transformation_tree = [options objectForKey:kXMLTransformationTree];
    
    // build the buffer -
    NSMutableString *buffer = [NSMutableString string];
    NSString *header_block = [self buildHeaderBlockFromBlueprintTree:transformation_tree andSBMLTree:model_tree];
    //NSString *parameter_block = [self buildRateConstantListFromSBMLTree:model_tree];
    NSString *ic_block = [self buildInitialConditionListFromSBMLTree:model_tree];
    //NSString *epsilon_block = [self buildEpsilonArrayFromSBMLTree:model_tree];
    NSString *footer_block = [self buildFooterBlockFromBlueprintTree:transformation_tree andSBMLTree:model_tree];
    [buffer appendString:header_block];
    //[buffer appendString:parameter_block];
    [buffer appendString:ic_block];
    //[buffer appendString:epsilon_block];
    [buffer appendString:footer_block];
    
    // return -
    return [NSString stringWithString:buffer];
}

-(NSString *)generateAlphaMatrixFunctionBufferWithOptions:(NSDictionary *)options
{
    // Get option and model tree's
    NSXMLDocument *model_tree = [options objectForKey:kXMLModelTree];
    NSXMLDocument *transformation_tree = [options objectForKey:kXMLTransformationTree];
    
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    // DataFile function -
    [buffer appendString:@"function [ALPHA_MATRIX] = CalculateAlphaMatrix(x,LAMBDA_MATRIX,DF);\n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendString:@"% Copyright (c) 2013 Varnerlab,\n"];
    [buffer appendString:@"% School of Chemical and Biomolecular Engineering,\n"];
    [buffer appendString:@"% Cornell University, Ithaca NY 14853 USA.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% Permission is hereby granted, free of charge, to any person obtaining a copy\n"];
    [buffer appendString:@"% of this software and associated documentation files (the \"Software\"), to deal\n"];
    [buffer appendString:@"% in the Software without restriction, including without limitation the rights\n"];
    [buffer appendString:@"% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n"];
    [buffer appendString:@"% copies of the Software, and to permit persons to whom the Software is\n"];
    [buffer appendString:@"% furnished to do so, subject to the following conditions:\n"];
    [buffer appendString:@"% The above copyright notice and this permission notice shall be included in\n"];
    [buffer appendString:@"% all copies or substantial portions of the Software.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n"];
    [buffer appendString:@"% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"];
    [buffer appendString:@"% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"];
    [buffer appendString:@"% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"];
    [buffer appendString:@"% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n"];
    [buffer appendString:@"% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n"];
    [buffer appendString:@"% THE SOFTWARE.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% CalculateAlphaMatrix.m \n"];
    [buffer appendString:@"% CalculateAlphaMatrix calculates the alpha matrix given a state and a native length\n"];
    [buffer appendString:@"% matrix. \n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendFormat:@"\n"];
    [buffer appendString:@"% Define the system - \n"];
    
    // get the number of nodes -
    NSArray *node_not_unique_array = [model_tree nodesForXPath:@".//listOfNodes/node/@index" error:nil];
    NSInteger total_node_counter = 2*[node_not_unique_array count] + 1;

    // get the edges -
    NSString *edge_xpath = @".//listOfEdges/edge/@index";
    NSArray *edge_array = [model_tree nodesForXPath:edge_xpath error:nil];
    NSInteger NUMBER_OF_EDGES = [edge_array count];
    
    // write -
    [buffer appendString:@"NUMBER_OF_EDGES = DF.NUMBER_OF_EDGES;\n"];
    [buffer appendString:@"ALPHA_MATRIX = zeros(NUMBER_OF_EDGES,NUMBER_OF_EDGES);\n"];
    [buffer appendFormat:@"\n"];
    [buffer appendString:@"% Populate the alpha matrix - \n"];
    NSInteger local_counter = 1;
    for (NSInteger edge_index_row = 0;edge_index_row<NUMBER_OF_EDGES;edge_index_row++)
    {
        // xpath -
        NSString *local_edge_xpath = [NSString stringWithFormat:@".//listOfEdges/edge[@index='%lu']/@end_node",local_counter];
        NSArray *local_edge_array = [model_tree nodesForXPath:local_edge_xpath error:nil];
        for (NSXMLElement *edge in local_edge_array)
        {
            // get the end_node -
            NSString *end_node_symbol = [edge stringValue];
            NSString *start_node_symbol = [NSString stringWithFormat:@"%lu",local_counter];
            NSInteger end_index = [end_node_symbol integerValue];
            
            // from the node counters, I need to calculate the index -
            NSInteger start_x_coordinate = 2*local_counter + total_node_counter - 2;
            NSInteger start_y_coordinate = 2*local_counter + total_node_counter - 1;
            NSInteger end_x_coordinate = 2*end_index + total_node_counter - 2;
            NSInteger end_y_coordinate = 2*end_index + total_node_counter - 1;

            // write the NUM -
            [buffer appendFormat:@"DISTANCE = sqrt((x(%lu,1) - x(%lu,1))^2 + (x(%lu,1) - x(%lu,1))^2);\n",start_x_coordinate,end_x_coordinate,start_y_coordinate,end_y_coordinate];
            [buffer appendFormat:@"NUM = DISTANCE - LAMBDA_MATRIX(%@,%@);\n",start_node_symbol,end_node_symbol];
            [buffer appendFormat:@"DENOM = DISTANCE;\n"];
            
            // write the line -
            [buffer appendFormat:@"ALPHA_MATRIX(%@,%@) = NUM/DENOM;\n",start_node_symbol,end_node_symbol];
            [buffer appendFormat:@"\n"];
        }
        
        // update the counter -
        local_counter = local_counter + 1;
    }
    
    // footer line -
    [buffer appendString:@"return;\n"];
    
    // return -
    return [NSString stringWithString:buffer];
}

#pragma mark - private helper methods
-(NSString *)buildVelocityBalancesFromSBMLTree:(NSXMLDocument *)sbmlTree
{
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    NSArray *node_not_unique_array = [sbmlTree nodesForXPath:@".//listOfNodes/node/@index" error:nil];
    NSInteger node_counter = 2*[node_not_unique_array count] + 1;
    NSInteger velocity_counter = 1;
    for (NSXMLElement *node in node_not_unique_array)
    {
        // Get the state -
        NSString *state_symbol = [node stringValue];
        
        // find all edges associated with this node -
        NSString *edge_xpath = [NSString stringWithFormat:@".//listOfEdges/edge[@start_node='%@']/@end_node",state_symbol];
        NSArray *edge_array = [sbmlTree nodesForXPath:edge_xpath error:nil];
        NSInteger NUMBER_OF_EDGES = [edge_array count];
        
        // x-coordinate for spring term -
        [buffer appendFormat:@"delta_state_array(%lu,1) = ",velocity_counter];
        NSInteger plus_counter = 0;
        for (NSXMLElement *edge in edge_array)
        {
            // get the end_node -
            NSString *end_state_symbol = [edge stringValue];
            
            // ok, so we need to calculate the index for the x_coordinate point at end_point_symbol
            NSInteger local_number = [end_state_symbol integerValue];
            NSInteger end_x_coordinate = 2*local_number + (2*[node_not_unique_array count] + 1) - 2;
            NSInteger velocity_end_x_coordinate = 2*local_number - 1;
            
            [buffer appendFormat:@"SPRING_MATRIX(%@,%@)*ALPHA_MATRIX(%@,%@)*(x(%lu,1) - x(%lu,1)) + DAMPING_MATRIX(%@,%@)*(x(%lu,1) - x(%lu,1))",state_symbol,end_state_symbol,state_symbol,end_state_symbol,node_counter,end_x_coordinate,state_symbol,end_state_symbol,velocity_end_x_coordinate,velocity_counter];
            
            if (plus_counter<NUMBER_OF_EDGES - 1)
            {
                [buffer appendString:@" + "];
            }
            
            plus_counter = plus_counter + 1;
        }
        
        
        // new line -
        [buffer appendString:@";\n"];
        
        // update velocity counter -
        velocity_counter = velocity_counter + 1;
        
        // update the node counter -
       // node_counter = node_counter + 1;
        
        // y-coordinate for spring term
        [buffer appendFormat:@"delta_state_array(%lu,1) = ",velocity_counter];
        plus_counter = 0;
        for (NSXMLElement *edge in edge_array)
        {
            // get the end_node -
            NSString *end_state_symbol = [edge stringValue];
            
            // ok, so we need to calculate the index for the x_coordinate point at end_point_symbol
            NSInteger local_number = [end_state_symbol integerValue];
            NSInteger end_y_coordinate = 2*local_number + (2*[node_not_unique_array count] + 1) - 1;
            NSInteger velocity_end_y_coordinate = 2*local_number;
            
            [buffer appendFormat:@"SPRING_MATRIX(%@,%@)*ALPHA_MATRIX(%@,%@)*(x(%lu,1) - x(%lu,1)) + DAMPING_MATRIX(%@,%@)*(x(%lu,1) - x(%lu,1))",state_symbol,end_state_symbol,state_symbol,end_state_symbol,(node_counter + 1),end_y_coordinate,state_symbol,end_state_symbol,velocity_end_y_coordinate,velocity_counter];
            
            if (plus_counter<NUMBER_OF_EDGES - 1)
            {
                [buffer appendString:@" + "];
            }
            
            plus_counter = plus_counter + 1;
        }

        // update velocity counter -
        velocity_counter = velocity_counter + 1;
        
        // update the node counter -
        node_counter = node_counter + 2;
        
        // new line -
        [buffer appendString:@";\n"];
    }
    
    // return -
    return buffer;
}

-(NSString *)buildNodeBalancesFromSBMLTree:(NSXMLDocument *)sbmlTree
{
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    NSArray *node_not_unique_array = [sbmlTree nodesForXPath:@".//listOfNodes/node/@index" error:nil];
    NSInteger node_counter = 2*[node_not_unique_array count] + 1;
    NSInteger velocity_counter = 1;
    for (NSXMLElement *node in node_not_unique_array)
    {
        // write the x line -
        [buffer appendFormat:@"delta_state_vector(%lu,1) = x(%lu,1);\n",node_counter,velocity_counter];
        
        // update the counter -
        node_counter = node_counter + 1;
        velocity_counter = velocity_counter + 1;
        
        // write the y line -
        [buffer appendFormat:@"delta_state_vector(%lu,1) = x(%lu,1);\n",node_counter,velocity_counter];
        
        // update the counter -
        node_counter = node_counter + 1;
        velocity_counter = velocity_counter + 1;
    }
    
    // return -
    return buffer;
}

-(NSString *)buildInitialConditionListFromSBMLTree:(NSXMLDocument *)sbmlTree
{
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    NSArray *node_not_unique_array = [sbmlTree nodesForXPath:@".//listOfNodes/node/@index" error:nil];
    NSMutableArray *node_vector = [NSMutableArray array];
    for (NSXMLElement *node in node_not_unique_array)
    {
        // Get the state -
        NSString *state_symbol = [node stringValue];
        
        // add -
        [node_vector addObject:state_symbol];
    }
    
    // Formulate rate constant buffer -
    // open -
    [buffer appendString:@"\n"];
    [buffer appendString:@"% Initial condition vector (velocity | node positions)\n"];
    [buffer appendString:@"INITIAL_CONDITION_VECTOR = [\n"];
    
    // setup ICs -
    NSInteger counter = 1;
    for (NSString *symbol_string in node_vector)
    {
        @autoreleasepool {
            
            // Get the x and y position -
            // x value velocity
            [buffer appendFormat:@"\t%f\t;%% \t %lu \t x_value_velocity_node_%@\n",0.0,counter,symbol_string];
            
            // update counter -
            counter = counter + 1;
            
            // write y-value buffer line
            [buffer appendFormat:@"\t%f\t;%% \t %lu \t y_value_velocity_node_%@\n",0.0,counter,symbol_string];
            
            // update counter -
            counter = counter + 1;
        }
    }
    
    for (NSString *symbol_string in node_vector)
    {
        @autoreleasepool {
            
            // Get the x and y position -
            // x value
            NSString *xpath_x_value = [NSString stringWithFormat:@".//listOfNodes/node[@index = '%@']/@x_value",symbol_string];
            NSString *x_value = [[[sbmlTree nodesForXPath:xpath_x_value error:nil] lastObject] stringValue];
            
            // y value
            NSString *xpath_y_value = [NSString stringWithFormat:@".//listOfNodes/node[@index = '%@']/@y_value",symbol_string];
            NSString *y_value = [[[sbmlTree nodesForXPath:xpath_y_value error:nil] lastObject] stringValue];
            
            // write x-value buffer line
            [buffer appendFormat:@"\t%@\t;%% \t %lu \t x_value_node_%@\n",x_value,counter,symbol_string];
            
            // update counter -
            counter = counter + 1;
            
            // write y-value buffer line
            [buffer appendFormat:@"\t%@\t;%% \t %lu \t y_value_node_%@\n",y_value,counter,symbol_string];
            
            // update counter -
            counter = counter + 1;
        }
    }

    
    // close -
    [buffer appendString:@"];\n"];
    
    
    // return buffer
    return [NSString stringWithString:buffer];
}
-(NSString *)buildHeaderBlockFromBlueprintTree:(NSXMLDocument *)blueprintTree
                                   andSBMLTree:(NSXMLDocument *)sbmlTree
{
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    // DataFile function -
    [buffer appendString:@"function DF = DataFile(TSTART,TSTOP,Ts,INDEX)\n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendString:@"% Copyright (c) 2013 Varnerlab,\n"];
    [buffer appendString:@"% School of Chemical and Biomolecular Engineering,\n"];
    [buffer appendString:@"% Cornell University, Ithaca NY 14853 USA.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% Permission is hereby granted, free of charge, to any person obtaining a copy\n"];
    [buffer appendString:@"% of this software and associated documentation files (the \"Software\"), to deal\n"];
    [buffer appendString:@"% in the Software without restriction, including without limitation the rights\n"];
    [buffer appendString:@"% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n"];
    [buffer appendString:@"% copies of the Software, and to permit persons to whom the Software is\n"];
    [buffer appendString:@"% furnished to do so, subject to the following conditions:\n"];
    [buffer appendString:@"% The above copyright notice and this permission notice shall be included in\n"];
    [buffer appendString:@"% all copies or substantial portions of the Software.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n"];
    [buffer appendString:@"% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"];
    [buffer appendString:@"% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"];
    [buffer appendString:@"% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"];
    [buffer appendString:@"% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n"];
    [buffer appendString:@"% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n"];
    [buffer appendString:@"% THE SOFTWARE.\n"];
    [buffer appendString:@"%\n"];
    [buffer appendString:@"% DataFile.m \n"];
    [buffer appendString:@"% DataFile holds the parameters and initial conditions for the cFL model. This struct\n"];
    [buffer appendString:@"% is passed around to the various functions and *can* be modfied in memory.\n"];
    [buffer appendString:@"% ------------------------------------------------------------------------------------- %\n"];
    [buffer appendFormat:@"\n"];
    [buffer appendString:@"% Dimension of the system - \n"];
    
    // Get the dimension of rates, and states -
    NSArray *edges = [sbmlTree nodesForXPath:@".//listOfEdges/edge/@index" error:nil];
    NSArray *node_not_unique_array = [sbmlTree nodesForXPath:@".//listOfNodes/node/@index" error:nil];
    NSMutableSet *node_vector = [NSMutableSet set];
    for (NSXMLElement *node in node_not_unique_array)
    {
        // Get the state -
        NSString *state_symbol = [node stringValue];
        
        // add -
        [node_vector addObject:state_symbol];
    }
    
    // how many triangles do we have?
    
    // put the dimension -
    [buffer appendFormat:@"NUMBER_OF_STATES = %ld;\n",4*[node_vector count]];
    [buffer appendFormat:@"NUMBER_OF_EDGES = %ld;\n",[edges count]];
    
    // return buffer
    return [NSString stringWithString:buffer];
}

-(NSString *)buildFooterBlockFromBlueprintTree:(NSXMLDocument *)blueprintTree
                                   andSBMLTree:(NSXMLDocument *)sbmlTree
{
    // Initialize the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    // Footer block -
    // open -
    [buffer appendString:@"\n"];
    [buffer appendString:@"% =========== DO NOT EDIT BELOW THIS LINE ================ %\n"];
    [buffer appendString:@"DF.RATE_CONSTANT_VECTOR = RATE_CONSTANT_VECTOR;\n"];
    [buffer appendString:@"DF.INITIAL_CONDITION_VECTOR = INITIAL_CONDITION_VECTOR;\n"];
    [buffer appendString:@"DF.NUMBER_OF_EDGES = NUMBER_OF_EDGES;\n"];
    [buffer appendString:@"DF.NUMBER_OF_STATES = NUMBER_OF_STATES;\n"];
    
    // close -
    [buffer appendString:@"% ======================================================== %\n"];
    [buffer appendString:@"return;\n"];
    
    // return buffer
    return [NSString stringWithString:buffer];
}


@end
