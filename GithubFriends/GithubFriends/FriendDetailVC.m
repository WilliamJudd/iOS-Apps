//
//  FriendDetailVC.m
//  GithubFriends
//
//  Created by William Judd on 1/8/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

#import "FriendDetailVC.h"


// Add property to this class .h called "friend info"

// Grab the request code from NewFriendVC.m

// Change the url to https://api.github/com/users/USERNAME/repos

// Make USERNAME dynamic based on friendInfo[@"login"]

// The return will be an NSArray of repos

// Log the repos array

// Extra:

// Make selecting a cell push to FriendDetailVC
// and set friendInfo based on cell selected









@interface FriendDetailVC () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation FriendDetailVC


{
    NSArray *repos;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
   
    NSString *username = self.friendInfo[@"login"];
    
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/users/%@/repos",username];
    
    NSURL * url = [NSURL URLWithString:urlString];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    repos = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers error:nil];

    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 200, 320, 368)];
    
    [self.view addSubview:tableView];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return repos.count;
    
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    
    cell.textLabel.text = repos[indexPath.row][@"name"];
    
    if(repos[indexPath.row][@"description"] == [NSNull null]){
        
    }else{
    
    
    cell.detailTextLabel.text = repos[indexPath.row][@"description"];
    }
           
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
