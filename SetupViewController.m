//
//  SetupViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "SetupViewController.h"
#import "SetupTableViewCell.h"
#import "BasicViewController.h"
#import "NewsViewController.h"
#import "ChangePassViewController.h"
@interface SetupViewController ()

@end

@implementation SetupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[SetupTableViewCell class] forCellReuseIdentifier:@"setup"];
    
    [self.view addSubview:_tableView];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SetupTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"setup" forIndexPath:indexPath];
    NSArray* name = @[@"基本资料" , @"修改密码" , @"消息设置" , @"关于SHARE" , @"清楚缓存"];
    
    cell.nameLabel.text = name[indexPath.row];
    
    return cell;
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIBarButtonItem* item = [UIBarButtonItem new];
    self.navigationItem.backBarButtonItem = item;
    
    if (indexPath.row == 0) {
        item.title = @"基本资料";
        BasicViewController* viewController = [BasicViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 1) {
        item.title = @"修改密码";
        ChangePassViewController* viewController = [ChangePassViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 2) {
        item.title = @"消息设置";
        NewsViewController* viewController = [NewsViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 3) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"当前没有新内容" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:NO completion:nil];
        
    } else if (indexPath.row == 4) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"缓存已清除" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alert animated:NO completion:nil];
        [self performSelector:@selector(DisMiss:) withObject:alert afterDelay:2];
    }
}
- (void) DisMiss: (UIAlertController*) alert
{
    [alert dismissViewControllerAnimated:YES completion:nil];
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
