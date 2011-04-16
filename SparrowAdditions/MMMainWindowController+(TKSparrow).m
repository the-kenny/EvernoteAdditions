//
//  MMMainWindowController+(TKSparrow).m
//  SparrowAdditions
//
//  Created by Moritz Ulrich on 16.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MMMainWindowController+(TKSparrow).h"


@implementation NSWindowController (MMMainWindowController__TKSparrow_)

/*
- (void)_tk_oldWindowDidLoad {

}

- (void)_tk_windowDidLoad {
    [self _tk_oldWindowDidLoad];
    
    //[[self _inspectorButton] setIsVisible:NO];
    void* inspectorButton = nil;
    object_getInstanceVariable(self, "_inspectorButton", &inspectorButton);
    [(id)inspectorButton setIsVisible:NO];
}
 */

- (void)_tk_oldSetInspectorVisible:(BOOL)arg {
    NSLog(@"_tk_oldSetInspectorVisible");
}

- (void)_tk_setInspectorVisible:(BOOL)arg {
    NSLog(@"_tk_setInspectorVisible");
    [self _tk_oldSetInspectorVisible:NO];
}

/*
- (void)_tk_toggleInspector:(id)arg {
    [self _tk_oldSetInspectorVisible:NO];
}
 */



@end
