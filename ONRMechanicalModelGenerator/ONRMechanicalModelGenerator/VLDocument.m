//
//  VLDocument.m
//  ONRMechanicalModelGenerator
//
//  Created by Jeffrey Varner on 5/23/13.
//  Copyright (c) 2013 Varnerlab. All rights reserved.
//

#import "VLDocument.h"

@interface VLDocument ()

// private methods -
-(void)cleanMyMemory;

// private props and outlets -
@property (retain) IBOutlet NSTextField *myBlueprintFileTextField;
@property (retain) IBOutlet NSProgressIndicator *myProgressIndicator;
@property (retain) IBOutlet NSTextField *myProgressUpdateTextField;
@property (retain) NSWindowController *myWindowController;
@property (retain) NSURL *myBlueprintFileURL;


@end


@implementation VLDocument

// synthesize -
@synthesize myBlueprintFileTextField = _myBlueprintFileTextField;
@synthesize myProgressUpdateTextField = _myProgressUpdateTextField;
@synthesize myProgressIndicator = _myProgressIndicator;
@synthesize myWindowController = _myWindowController;
@synthesize myBlueprintFileURL = _myBlueprintFileURL;

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"VLDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{    
    // Ok, call the super -
    [super windowControllerDidLoadNib:aController];
    
    // grab the controller -
    self.myWindowController = aController;

}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

#pragma mark - actions
-(IBAction)loadSimulationBlueprintFileButtonWasPushed:(NSButton *)button
{
    // Launch the NSOpenPanel logic, capture the user filename and present the path in the text fld
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    
    // Configure the panel -
    [openPanel setAllowsMultipleSelection:NO];
    [openPanel setCanChooseFiles:YES];
    [openPanel setCanCreateDirectories:YES];
    
    // Run the panel as a sheet -
    __weak VLDocument *weak_self = self;
    [openPanel beginSheetModalForWindow:[[self myWindowController] window]
                      completionHandler:^(NSInteger resultIndex){
                          
                          // Ok, so this block gets executed *after* we have selected a file
                          if (resultIndex == NSFileHandlingPanelOKButton)
                          {
                              // Ok, so when I get here the user has hit the OK button
                              NSURL *mySelectedURL = [openPanel URL];
                              
                              // grab this URL for later -
                              weak_self.myBlueprintFileURL = mySelectedURL;
                              
                              // Create a file path string -
                              NSString *pathString = [mySelectedURL absoluteString];
                              
                              // Set the value in the text fld -
                              [[weak_self myBlueprintFileTextField] setStringValue:pathString];
                          }
                          else if (resultIndex == NSFileHandlingPanelCancelButton)
                          {
                              // Ok, so when I get here the user has hit the cancel button
                              // for now, do nothing.
                          }
                          
                      }];
    
}

-(IBAction)launchCodeGenerationProcessButtonWasTapped:(NSButton *)button
{
    
}

-(IBAction)cancelSimulationProcessGenerationButtonWasTapped:(NSButton *)button
{
    
}

#pragma mark - private lifecycle
-(void)cleanMyMemory
{
    
}

@end
