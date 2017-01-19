//
//  CoreWrapper.m
//  ActionWrapper
//
//  Created by Anton Pomozov on 15/01/2017.
//  Copyright © 2017 Anton Pomozov. All rights reserved.
//

#import "CoreWrapper.h"
#import "tox/tox.h"

@interface CoreWrapper()

@property (nonatomic, assign, nullable) Tox *tox;

@end

@implementation CoreWrapper

- (void)start {
    struct Tox_Options options;
    tox_options_default(&options);
    
    TOX_ERR_NEW error;
    self.tox = tox_new(&options, &error);
    tox_options_free(&options);
    
    if (!self.tox) {
        NSLog(@"Failed to start Tox, error code: %u", error);
    }
}
- (void)kill {
    tox_kill(self.tox);
    self.tox = nil;
}

@end
