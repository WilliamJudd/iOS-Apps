
//  ViewController.m
//  firstApp
//
//  Created by William Judd on 1/5/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)bigButtonPressed:(id)sender {
    
    self.myLabel.text = self.myTextField.text;
    
    
}
@end
