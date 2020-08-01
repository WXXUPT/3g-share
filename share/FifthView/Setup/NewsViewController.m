//
//  NewsViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsTableViewCell.h"
@interface NewsViewController ()

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
     
    _tableView.dataSource = self;
    _tableView.delegate = self;
     
    [_tableView registerClass:[NewsTableViewCell class] forCellReuseIdentifier:@"news"];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NewsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"news" forIndexPath:indexPath];
    
    NSArray *name = @[@"接受所有新消息通知", @"通知显示栏", @"声音", @"振动", @"关注更新"];
    cell.nameLabel.text = name[indexPath.row];
    
    [cell.setButton setImage:[UIImage imageNamed:@"my_button_normal.png"] forState:UIControlStateNormal];
    [cell.setButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
    
    return cell;
    
}
- (void)press:(UIButton *) btn
{
    
    [btn setImage:[UIImage imageNamed:@"my_button_pressed.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchDown];
    
}

- (void)pressed:(UIButton *) btn
{
    
    [btn setImage:[UIImage imageNamed:@"my_button_normal.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
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
