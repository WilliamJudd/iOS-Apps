//
//  ViewController.m
//  ScribbleTouch
//
//  Created by William Judd on 1/14/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"
#import "ScribbleView.h"

@interface ViewController ()

@end

@implementation ViewController

{
    
    NSMutableDictionary *currentScribble;
    UIColor *selectedColor;
    int selectedStrokeWidth;
    UIColor *fillColor;
}



- (void)viewDidLoad {
    [super viewDidLoad];

    selectedColor = [UIColor blackColor];
    fillColor =[UIColor clearColor];
    selectedStrokeWidth = 1;
    

}
- (IBAction)changeColor:(UIButton *)sender {

    selectedColor = sender.backgroundColor;
    
    


}
- (IBAction)changeStrokeWidth:(UISlider *)sender {
    
    selectedStrokeWidth = sender.value;
    

}
- (IBAction)changeFillColor:(UIButton *)sender {
    
    fillColor = sender.backgroundColor;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    

    UITouch *touch = touches.allObjects.firstObject;
    
    CGPoint location = [touch locationInView:self.view];
    
    
    
    currentScribble = [@{
                         
                         @"type":@"path",
                         @"fillColor":fillColor,
                         @"strokeColor":selectedColor,
                         @"strokeWidth":@(selectedStrokeWidth),
                         @"points":[@[[NSValue valueWithCGPoint:location]]mutableCopy]
                         
                         } mutableCopy];
    
    
    ScribbleView *sView =(ScribbleView *)self.view;
    [sView.scribbles addObject:currentScribble];
    
 //   [((ScribbleView *)self.view).scribbles addObject:currentScribble];
   
    
    
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = touches.allObjects.firstObject;
    
    CGPoint location = [touch locationInView:self.view];

    [currentScribble[@"points"] addObject:[NSValue valueWithCGPoint:location]];
    
    [self.view setNeedsDisplay];
    
    
    
    
    
}

@end
