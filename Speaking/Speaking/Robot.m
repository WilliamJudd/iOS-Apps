//
//  Robot.m
//  Speaking
//
//  Created by William Judd on 1/13/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "Robot.h"

@implementation Robot

//{
//    int powerLevel;
//}


-(void)cleanHouse {
    
    //find out from delegate how many rooms need to be cleaned
    
    int rooms = [self.delegate howManyRoomsDoIHaveToClean];
    
    
    NSLog(@"Robot starts cleanin %d rooms",rooms);
    
    
}

-(void)dance {
    
    
    //find out what type of jig to do
    
    NSString *danceStyle = [self.delegate whatTypeOfDance];
    
    NSLog(@"Robot starts to %@",danceStyle);
    
    
}


-(void)checkPower {
    
    
    
}
@end
