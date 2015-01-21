//
//  Triangle.m
//  Shapes
//
//  Created by William Judd on 1/13/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "Triangle.h"
IB_DESIGNABLE
@implementation Triangle


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.



- (void)drawRect:(CGRect)rect {
 
  
    CGContextRef context = UIGraphicsGetCurrentContext();

    [self.fillColor set];
    
    
    CGContextMoveToPoint(context, rect.size.width /2, 0);
    
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    
    CGContextAddLineToPoint(context, 0, rect.size.width);
    
    CGContextAddLineToPoint(context, rect.size.width/2, 0);
    
    CGContextFillPath(context);

    
    
    
    // Drawing code
}

@end
