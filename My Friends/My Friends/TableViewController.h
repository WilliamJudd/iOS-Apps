//
//  TableViewController.h
//  My Friends
//
//  Created by William Judd on 1/22/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/ParseUI.h>



@interface TableViewController : UITableViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

- (IBAction)logOutButtonTapAction:(id)sender;

@property (nonatomic,strong) NSArray *friends;

@end
