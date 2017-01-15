//
//  CoreWrapper.m
//  ActionWrapper
//
//  Created by Anton Pomozov on 15/01/2017.
//  Copyright © 2017 Anton Pomozov. All rights reserved.
//

#import "CoreWrapper.h"
#import "tox/tox.h"

@implementation CoreWrapper

- (void)open {
    struct Tox_Options options;
    tox_options_default(&options);
    
    TOX_ERR_NEW error;
    Tox *tox = tox_new(&options, &error);
    
    const char *name_str = "Echo Bot";
    const uint8_t name = (uint8_t)atoi(name_str);
    tox_self_set_name(tox, &name, strlen(name_str), NULL);
}
- (void)close {
    
}

@end
