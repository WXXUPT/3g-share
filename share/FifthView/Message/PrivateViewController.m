//
//  PrivateViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "PrivateViewController.h"
#import "PrivateTableViewCell.h"
@interface PrivateViewController ()

@end

@implementation PrivateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[PrivateTableViewCell class] forCellReuseIdentifier:@"private"];
    
    [self.view addSubview:_tableView];
    
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PrivateTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"private"];
    
    NSArray* name = @[@"share小王" , @"share小旭" , @"share小真" , @"share小狗"];
    NSArray* message = @[@"你的作品我很喜欢！" , @"谢谢，已关注你" , @"为你点赞！" , @"你好可以问问你是怎么拍的吗"];
    NSArray* port = @[@"sixin_img1.png" , @"sixin_img2.png" , @"sixin_img3.png" , @"sixin_img4.png"];
    NSArray* time = @[@"11-03 09:45" , @"11-03 10:45" , @"11-03 11:45" , @"11-03 12:45"];
    cell.nameLabel.text = name[indexPath.row];
    cell.messageLabel.text = message[indexPath.row];
    cell.portImage.image = [UIImage imageNamed:port[indexPath.row]];
    cell.timeLabel.text = time[indexPath.row];
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
//我又是谁的青春呢

@end
