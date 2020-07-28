//
//  MessageViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "MessageViewController.h"
#import "MessageTableViewCell.h"
#import "PrivateViewController.h"
#import "FollowViewController.h"
@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[MessageTableViewCell class] forCellReuseIdentifier:@"message1"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MessageTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"message1" forIndexPath:indexPath];
    
    NSArray *nameArr =  @[@"评论", @"推荐我的", @"新关注的", @"私信", @"活动通知"];
    NSArray *numArr = @[@"7", @"9", @"5", @"4", @"1"];
    
    cell.nameLabel.text = nameArr[indexPath.row];
    cell.numberLabel.text = numArr[indexPath.row];
    cell.jiantouImage.image = [UIImage imageNamed:@"img33.png"];
    
    return cell;
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UIBarButtonItem* item = [UIBarButtonItem new];
    self.navigationItem.backBarButtonItem = item;
    
    if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 4) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"目前没有新内容！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else if (indexPath.row == 2) {
        item.title = @"新关注的";
        FollowViewController* viewController = [FollowViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 3) {
        item.title = @"私信";
        PrivateViewController* viewController = [PrivateViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    }
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
