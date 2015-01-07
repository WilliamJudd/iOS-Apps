//
//  Finger.m
//  Human
//
//  Created by William Judd on 1/6/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "Finger.h"




@implementation Finger


@synthesize fingerPrint=_fingerPrint;

//(NSString * fingerPrint = finger.fingerPrint;
 
- (NSString *)fingerPrint {
    
    
    return _fingerPrint;
    
}

// finger.fingerPrint = @"fingerprint";

- (void)setFingerPrint:(NSString *)fingerPrint {
    
    _fingerPrint = fingerPrint;
}

@end
