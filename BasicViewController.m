//
//  BasicViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "BasicViewController.h"
#import "Base1TableViewCell.h"
#import "Base2TableViewCell.h"
#import "Base3TableViewCell.h"
@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[Base1TableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView registerClass:[Base2TableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableView registerClass:[Base3TableViewCell class] forCellReuseIdentifier:@"3"];
    
    [self.view addSubview:_tableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0) {
        return 80;
    } else {
        return 50;
    }
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *name = @[@"头像", @"昵称", @"签名", @"性别", @"邮箱"];
    NSArray *content = @[@" ", @"share小王", @"开心了就笑，不开心了就过会儿再笑", @" ", @"145####63@qq.com"];
    
    if (indexPath.row == 0) {
        Base1TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        cell.nameLabel.text = name[indexPath.row];
        return cell;
    } else if (indexPath.row == 3) {
        Base3TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"3" forIndexPath:indexPath];
        cell.nameLabel.text = name[indexPath.row];
        return cell;
    } else {
        Base2TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.nameLabel.text = name[indexPath.row];
        cell.contentLabel.text = content[indexPath.row];
        return cell;
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
