//
//  ListTVC.m
//  List
//
//  Created by William Judd on 1/7/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ListTVC.h"
#import "ListCell.h"

// Finish coloring & laying out the tableviewcell based on design

// Change row height

// make the seperator go all of the way to the left side

// Listen for touches on the cell (will use for strike through)

// Listen for touches on the colorView (will use for toggling the color)

// add 10 items to array

// Extra:

// add swipe to delete

// make the array mutable



@interface ListTVC ()

@end

@implementation ListTVC
{
    NSArray * listItems;
}
- (instancetype)init {
    
    self = [super init];
    if (self) {
        
//        listItems = [NSArray arrayWithObjects:@"Sammy Sosa",@"Mark Grace",@"Bernie", nil];
        
        
        
//        NSDictionary *d = [[NSDictionary alloc]
//                           initWithObjectsAndKeys:@"this is the text",@"text",[UIColor greenColor],@"color", nil];

        // ^ same thing as below
        
//        NSDictionary *sd = @{
//                             
//                             @"text":@"this is the text",
//                             @"color":[UIColor greenColor]
//                             
//                             };
//                        
        
        self.view.backgroundColor = [UIColor blackColor];
        
     listItems = @[
                   
                   @{@"text":@"Da Bears",
                     @"color":[UIColor greenColor],
                     @"done":@NO},
                   
                   @{@"text":@"Packers Suck",
                     @"color":[UIColor orangeColor],
                     @"done":@NO},
                   
                   @{@"text":@"the Aints",
                     @"color":[UIColor purpleColor],
                     @"done":@YES},
                   
                   @{@"text":@"Redskins",
                     @"color":[UIColor yellowColor],
                     @"done":@NO},
                   
                   @{@"text":@"Eagles",
                     @"color":[UIColor brownColor],
                     @"done":@NO},
                   
                   @{@"text":@"49ers",
                     @"color":[UIColor cyanColor],
                     @"done":@NO},
                   
                   @{@"text":@"Panthers",
                     @"color":[UIColor magentaColor],
                     @"done":@NO},
                   
                   @{@"text":@"Bucks",
                     @"color":[UIColor grayColor],
                     @"done":@NO},
                   
                   @{@"text":@"Go Irish",
                     @"color":[UIColor lightGrayColor],
                     @"done":@NO},
                   
                   @{@"text":@"Patriots",
                     @"color":[UIColor darkGrayColor],
                     @"done":@NO},
                   
                   @{@"text":@"Cubbies",
                     @"color":[UIColor blueColor],
                     @"done":@NO},
                   
                   @{@"text":@"DAAAAAA Bulls",
                     @"color":[UIColor greenColor],
                     @"done":@NO},
                   
                   ];
//        
//        
//        [listItems objectAtIndex:0];
//        listItems[0];
//        
        
    }
    
    
    return self;


}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return listItems.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell==nil) {
        
        cell = [[ListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
       
    }
    
  //  NSDictionary *listItem = listItems[indexPath.row];
  //  cell.itemInfo = listItem;
    
//    NSDictionary *listItem = listItems[indexPath.row];
    
    
    cell.itemInfo = listItems[indexPath.row];
    
    //^ SAME THING

    
    
    
    self.tableView.rowHeight = 70;
    
    cell.backgroundColor = [UIColor blackColor];
    
    {
        // Remove seperator inset
        if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
            [cell setSeparatorInset:UIEdgeInsetsZero];
        }
        
        // Prevent the cell from inheriting the Table View's margin settings
        if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]) {
            [cell setPreservesSuperviewLayoutMargins:NO];
        }
        
        // Explictly set your cell's layout margins
        if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
            [cell setLayoutMargins:UIEdgeInsetsZero];
        }
    }
    
    
    
   // Configure the cell...
    
    return cell;
}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//   // ListCell *cell = (ListCell *)[self tableView:tableView cellForRowAtIndexPath: indexPath];








/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
