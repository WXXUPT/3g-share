//
//  ViewControllerActivity.m
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewControllerActivity.h"
#import "TableViewCellAct.h"

@interface ViewControllerActivity ()

@end

@implementation ViewControllerActivity

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [UITabBarItem new];
       tabBarItem.image = [[UIImage imageNamed:@"button4_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       tabBarItem.selectedImage = [[UIImage imageNamed:@"button4_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"活动";
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 700) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[TableViewCellAct class] forCellReuseIdentifier:@"nil"];
    [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCellAct* cell = [tableView dequeueReusableCellWithIdentifier:@"nil"];
    
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[TableViewCellAct alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"nil"];
        }
        cell.imageWx.image = [UIImage imageNamed:@"tt1.jpg"];
        return cell;
    } else if (indexPath.section == 1) {
        if (cell == nil) {
            cell = [[TableViewCellAct alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"nil"];
        }
        cell.imageWx.image = [UIImage imageNamed:@"tt2.jpg"];
        return cell;
    } else if (indexPath.section == 2) {
        if (cell == nil) {
            cell = [[TableViewCellAct alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"nil"];
        }
        cell.imageWx.image = [UIImage imageNamed:@"tt3.jpg"];
        return cell;
    }
    return cell;
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
