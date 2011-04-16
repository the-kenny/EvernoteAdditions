//
//  TKSparrowPlugin.h
//  SparrowAdditions
//
//  Created by Moritz Ulrich on 16.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TKSparrowPlugin : NSObject {
@private
    
}

- (id)init;

+ (void)load;
+ (TKSparrowPlugin*)sharedInstance;

@end
