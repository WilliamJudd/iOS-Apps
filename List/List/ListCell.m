//
//  ListCell.m
//  List
//
//  Created by William Judd on 1/7/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "ListCell.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@implementation ListCell

{
    UIView *colorView;
    
    BOOL isDone;
    
    UIView * strikeThrough;
    
   
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {

        colorView = [[UIView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH -30, 25, 20, 20)];
        colorView.backgroundColor = [ UIColor blueColor];
        [self.contentView addSubview:colorView];
    
        colorView.layer.cornerRadius = colorView.frame.size.width/2;
        

        strikeThrough = [[UIView alloc] initWithFrame:CGRectMake(10, 35, 100, 1)];
        strikeThrough.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:strikeThrough];
 
        
        
    }
    
    
    return self;
    
}

-(void)setItemInfo:(NSDictionary *)itemInfo

{


    colorView.backgroundColor = itemInfo[@"color"];
    
    if (colorView.backgroundColor == [UIColor blackColor]) {
        colorView.layer.borderColor = [UIColor whiteColor].CGColor;
        colorView.layer.borderWidth = .25;
    
    }
    self.textLabel.text = itemInfo[@"text"];
    self.textLabel.textColor = [UIColor whiteColor];
    
    isDone = [itemInfo[@"done"] boolValue];
    
    strikeThrough.hidden = !isDone;
    
    _itemInfo = itemInfo;
    
}

    

@end
