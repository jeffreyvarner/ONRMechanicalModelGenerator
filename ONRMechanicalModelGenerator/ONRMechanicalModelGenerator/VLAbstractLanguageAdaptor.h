
//
//  VLAbstractLanguageAdaptor.h
//  CFLGenerator
//
//  Created by Jeffrey Varner on 5/7/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VLAbstractLanguageAdaptor : NSObject
{
    
}

// public methods -
-(NSString *)generateDataFileBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateBalanceEquationsBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateAlphaMatrixFunctionBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateLambdaMatrixFunctionBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateSpringConstantMatrixBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateDampingConstantMatrixBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateExternalForcingBufferWithOptions:(NSDictionary *)options;
-(NSString *)generatePositionConstraintFunctionBufferWithOptions:(NSDictionary *)options;
-(NSString *)generateNodeConstraintFunctionBufferWithOptions:(NSDictionary *)options;

@end
