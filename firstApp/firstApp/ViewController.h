//
//  ViewController.h
//  firstApp
//
//  Created by William Judd on 1/5/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) UIView * myView;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)bigButtonPressed:(id)sender;

@end

