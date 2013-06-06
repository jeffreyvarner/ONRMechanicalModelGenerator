//
//  VLDocument.h
//  ONRMechanicalModelGenerator
//
//  Created by Jeffrey Varner on 5/23/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface VLDocument : NSDocument
{
    @private
    NSTextField *_myBlueprintFileTextField;
    NSTextField *_myProgressUpdateTextField;
    NSProgressIndicator *_myProgressIndicator;
    NSWindowController *_myWindowController;
    NSURL *_myBlueprintFileURL;
}

// Actions -
-(IBAction)loadSimulationBlueprintFileButtonWasPushed:(NSButton *)button;
-(IBAction)launchCodeGenerationProcessButtonWasTapped:(NSButton *)button;
-(IBAction)cancelSimulationProcessGenerationButtonWasTapped:(NSButton *)button;

@end
