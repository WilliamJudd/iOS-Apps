//
//  Hand.h
//  Human
//
//  Created by William Judd on 1/6/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Thumb;
@class Finger;

@interface Hand : NSObject

@property (nonatomic) Finger *firstfinger;
@property (nonatomic) Finger *secondfinger;
@property (nonatomic) Finger *thirdfinger;
@property (nonatomic) Finger *fourthfinger;

@property (nonatomic) Thumb *thumb;


@end
