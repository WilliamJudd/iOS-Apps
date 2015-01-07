//
//  PrettyButton.m
//  Basics
//
//  Created by William Judd on 1/6/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "PrettyButton.h"

@implementation PrettyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


self.layer.cornerRadius = self.frame.size.height / 2;

@end
