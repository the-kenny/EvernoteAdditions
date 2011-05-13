//
//  TKSparrowPlugin.m
//  SparrowAdditions
//
//  Created by Moritz Ulrich on 16.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TKEvernoteAdditions.h"

@implementation TKEvernoteAdditions

+ (void)load {    

    //Save old selector in _tk_oldSetInspectorVisible:
    MethodSwizzle(NSClassFromString(@"ENAdManager"), 
                  @selector(_tk_oldCanHideAds), 
                  @selector(canHideAds), 
                  YES);
    MethodSwizzle(NSClassFromString(@"ENAdManager"), 
                  @selector(canHideAds), 
                  @selector(_tk_canHideAds), 
                  YES);    

    NSLog(@"TKEvernoteAdditions loaded.");
}

+ (TKEvernoteAdditions*)sharedInstance {
    static TKEvernoteAdditions* plugin = nil;
    
    if (plugin == nil)
        plugin = [[TKEvernoteAdditions alloc] init];
    
    return plugin;
}

@end
