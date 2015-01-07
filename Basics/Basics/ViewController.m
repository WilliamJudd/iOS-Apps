//
//  ViewController.m
//  Basics
//
//  Created by William Judd on 1/5/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ViewController.h"

//  Create 2 View Controllers on the main storyboard

//  View Controller 1
//  - 2 buttones (one will clear textfields, one will log all textfields)
//  - 3 textfields username,email,password)
//  password field should look like one by hiding the text with dots (look in the right panel)
//  - email field should use email keyboard (also in right panel)

//  View Controller 2
//  - 4 buttons with different color backgrounds
//  - each button changes the main view contoller's background color

//  Add contraints

//  Make the buttons on view contoller 2 circles with no text

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearFields:(id)sender{
    self.usernameField.text = @"";
    self.emailfield.text = @"";
    self.passwordField.text= @"";
    
}
@end
