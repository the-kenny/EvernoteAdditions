//
//  TKPluginHelpers.h
//  SparrowAdditions
//
//  Created by Moritz Ulrich on 16.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/objc-class.h>

void swizzleMethods(NSArray* methods);
BOOL MethodSwizzle(Class aClass, SEL orig_sel, SEL alt_sel, BOOL isInstance);
