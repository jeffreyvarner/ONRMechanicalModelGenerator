//
//  VLCGSLLanguageAdaptor.m
//  ONRMechanicalModelGenerator
//
//  Created by Jeffrey Varner on 7/26/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLCGSLLanguageAdaptor.h"

@implementation VLCGSLLanguageAdaptor


-(NSString *)generateBalanceEquationsBufferWithOptions:(NSDictionary *)options
{
    // get the options from the dictionary -
    NSXMLDocument *model_tree = [options objectForKey:kXMLModelTree];
    __unused NSXMLDocument *transformation_tree = [options objectForKey:kXMLTransformationTree];
    
    // build the buffer -
    NSMutableString *buffer = [NSMutableString string];
    
    // header -
    
    [buffer appendString:@"function [delta_state_vector] = BalanceEquations(x,t,DF)\n"];
    [buffer appendString:@"// ------------------------------------------------------------------------------------- // \n"];
    [buffer appendString:@"// Copyright (c) 2013 Varnerlab,\n"];
    [buffer appendString:@"// School of Chemical and Biomolecular Engineering,\n"];
    [buffer appendString:@"// Cornell University, Ithaca NY 14853 USA.\n"];
    [buffer appendString:@"// \n"];
    [buffer appendString:@"// Permission is hereby granted, free of charge, to any person obtaining a copy\n"];
    [buffer appendString:@"// of this software and associated documentation files (the \"Software\"), to deal\n"];
    [buffer appendString:@"// in the Software without restriction, including without limitation the rights\n"];
    [buffer appendString:@"// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n"];
    [buffer appendString:@"// copies of the Software, and to permit persons to whom the Software is\n"];
    [buffer appendString:@"// furnished to do so, subject to the following conditions:\n"];
    [buffer appendString:@"// The above copyright notice and this permission notice shall be included in\n"];
    [buffer appendString:@"// all copies or substantial portions of the Software.\n"];
    [buffer appendString:@"//\n"];
    [buffer appendString:@"// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n"];
    [buffer appendString:@"// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"];
    [buffer appendString:@"// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"];
    [buffer appendString:@"// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"];
    [buffer appendString:@"// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n"];
    [buffer appendString:@"// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n"];
    [buffer appendString:@"// THE SOFTWARE.\n"];
    [buffer appendString:@"//\n"];
    [buffer appendString:@"// BalanceEquations.m \n"];
    [buffer appendString:@"// BalanceEquations describes the system of springs and dashpots.\n"];
    [buffer appendString:@"// Time and state is passed in along with an instance of the DataFile. \n"];
    [buffer appendString:@"// ------------------------------------------------------------------------------------- // \n"];
    [buffer appendFormat:@"\n"];
    [buffer appendString:@"% Define the state vector - \n"];
    [buffer appendString:@"NUMBER_OF_STATES = DF.NUMBER_OF_STATES;\n"];
    [buffer appendString:@"delta_state_vector = zeros(NUMBER_OF_STATES,1);\n"];
    [buffer appendString:@"\n"];

    
    // return buffer -
    return [NSString stringWithString:buffer];
}

@end
