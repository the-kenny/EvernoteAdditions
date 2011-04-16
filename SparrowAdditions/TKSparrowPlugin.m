//
//  TKSparrowPlugin.m
//  SparrowAdditions
//
//  Created by Moritz Ulrich on 16.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TKSparrowPlugin.h"

@implementation TKSparrowPlugin

+ (void)load {    
    /*  
	MethodSwizzle(NSClassFromString(@"MMMainWindowController"), 
                  @selector(setInspectorVisible:), 
                  @selector(_tk_toggleInspector:), 
                  YES);
    */
    
    //Save old selector in _tk_oldSetInspectorVisible:
    MethodSwizzle(NSClassFromString(@"MMMainWindowController"), 
                  @selector(_tk_oldSetInspectorVisible:), 
                  @selector(setInspectorVisible:), 
                  YES);
    MethodSwizzle(NSClassFromString(@"MMMainWindowController"), 
                  @selector(setInspectorVisible:), 
                  @selector(_tk_setInspectorVisible:), 
                  YES);    
    
    /*
    MethodSwizzle(NSClassFromString(@"MMMainWindowController"), 
                  @selector(_tk_oldWindowDidLoad:), 
                  @selector(windowDidLoad:), 
                  YES);
    MethodSwizzle(NSClassFromString(@"MMMainWindowController"), 
                  @selector(windowDidLoad:), 
                  @selector(_tk_windowDidLoad:), 
                  YES);    
    */
    
	NSLog(@"TKSparrowPlugin loaded.");
}

+ (TKSparrowPlugin*)sharedInstance {
    static TKSparrowPlugin* plugin = nil;
    
    if (plugin == nil)
        plugin = [[TKSparrowPlugin alloc] init];
    
    return plugin;
}

@end
