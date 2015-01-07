//
//  Body.h
//  Human
//
//  Created by William Judd on 1/6/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Arm;
@class Head;
@class Leg;

@interface Body : NSObject

@property (nonatomic) Arm * arm;
@property (nonatomic) Head * head;
@property (nonatomic) Leg * leg;

@end
