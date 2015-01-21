//
//  ScribbleView.m
//  ScribbleTouch
//
//  Created by William Judd on 1/14/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ScribbleView.h"

@implementation ScribbleView

//    @[
//
//        @{
//            @"type":@"path",
//            @"fillColor":[UIColor greenColor],
//            @"strokeColor":[UIColor blackColor],
//            @"strokeWidth":@2,
//            @"points":@[CGPoint,CGPoint,CGPoint]
//        },
//
//        @{
//            @"type":@"circle",
//            @"fillColor":[UIColor greenColor],
//            @"strokeColor":[UIColor blackColor],
//            @"strokeWidth":@2,
//            @"frame":CGRect
//        }
//
//    ];



- (NSMutableArray *)scribbles{
    
    if (_scribbles == nil) {_scribbles = [@[] mutableCopy];}
    return _scribbles;
    
    
}




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    // Drawing code

     CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetLineCap(context, kCGLineCapRound);
     
    
    
    for (NSDictionary *scribble in self.scribbles) {
        
        CGContextSetLineWidth(context, [scribble[@"strokeWidth"] floatValue]);
        
        
        
        UIColor *strokeColor = scribble[@"strokeColor"];
        
        [strokeColor set];
        
        CGPoint firstPoint = [scribble[@"points"][0] CGPointValue];
        CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
        
        for (NSValue *pointValue in scribble[@"points"]) {
            
            CGPoint point = [pointValue CGPointValue];
            CGContextAddLineToPoint(context, point.x, point.y);
            
            
        }
        
        CGContextStrokePath(context);
        
        UIColor * fillColor = scribble[@"fillColor"];
        [fillColor set];
        
        
        CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
        
        for (NSValue *pointValue in scribble[@"points"]) {
            
            CGPoint point = [pointValue CGPointValue];
            CGContextAddLineToPoint(context, point.x, point.y);
            
        }
        
        CGContextFillPath(context);
        
    }
    
    
    
    
//
//     CGContextSetLineWidth(context, 30);
//     
//     [[UIColor colorWithWhite:0.0 alpha:0.5]set];
//     
//     CGContextFillEllipseInRect(context, CGRectMake(10, 10, 200, 200));
// 
//     CGContextStrokePath(context);
//     
//     CGContextFillEllipseInRect(context, CGRectMake(10, 100, 200, 200));
// 
//     CGContextStrokePath(context);
//     
//     CGContextFillEllipseInRect(context, CGRectMake(10, 10, 200, 200));
//     
//     CGContextFillEllipseInRect(context, CGRectMake(10, 10, 200, 200));
//
//     CGContextStrokePath(context);
 }



@end
