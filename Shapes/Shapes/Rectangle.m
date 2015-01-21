//
//  Rectangle.m
//  Shapes
//
//  Created by William Judd on 1/13/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "Rectangle.h"
IB_DESIGNABLE
@implementation Rectangle

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self.fillColor set];
    
    //CGContextFillRect(context, rect);
    
    CGContextMoveToPoint(context, 0, 0);
    
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextAddLineToPoint(context, 0, 0);
    
    CGContextFillPath(context);
    
    
     
     }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //    CGRect bounds = self.bounds;
//    
//    //figure out the center of the bounds rectangle
//    
//    CGPoint center;
//    
//    center.x = bounds.origin.x + bounds.size.width / 2.0;
//    
//    center.y = bounds.origin.y + bounds.size.height / 2.0;
//   
//    //the circle will be with largest that will fit in the view
//    
//    float radius = (MIN(bounds.size.width,bounds.size.height) /2.0);
//    UIBezierPath *path = [[UIBezierPath alloc]init];
//    //add an arc to the part at the center, with radius of radius,
//    //from 0 to 2*PI radians (a circle)
//    
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
//    
//    //configure line width to 10 points
//    
//    path.lineWidth = 10;
//    
//    // Draw the line!
//    [path stroke];
    


@end
