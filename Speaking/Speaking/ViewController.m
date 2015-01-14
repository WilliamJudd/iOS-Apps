//
//  ViewController.m
//  Speaking
//
//  Created by William Judd on 1/13/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"

@interface ViewController () <MyViewDelegate>

@end

@implementation ViewController
{
    MyView *view1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    view1 = [[MyView alloc]init];
    
    view1.delegate = self;
    
    view1.name = @"Bob";
    
    NSLog(@"view1 name = %@",view1.name);



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)changeMyNameTo:(NSString *)name{
    
//    view1.name =name;
    NSLog(@"%@",name);
    
 //   view1.name =name;

    NSLog(@"view1 new name = %@",view1.name);



}

@end
