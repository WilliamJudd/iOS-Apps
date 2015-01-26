//
//  ViewController.m
//  My Friends
//
//  Created by William Judd on 1/22/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PFObject *anotherPlayer = [PFObject objectWithClassName:@"Player"];
    [anotherPlayer setObject:@"Jack" forKey:@"Name"];
    [anotherPlayer setObject:[NSNumber numberWithInt:840] forKey:@"Score"];
    
    
    //    [anotherPlayer saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
    //
    //        if (succeeded){
    //            NSLog(@"Object Uploaded!");
    //        }
    //        else{
    //            NSString *errorString = [[error userInfo] objectForKey:@"error"];
    //            NSLog(@"Error: %@", errorString);
    //        }
    //
    //    }];
    
    
    [anotherPlayer save];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
