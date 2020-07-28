//
//  FollowViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "FollowViewController.h"
#import "FollowTableViewCell.h"
@interface FollowViewController ()

@end

@implementation FollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
 
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[FollowTableViewCell class] forCellReuseIdentifier:@"follow"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FollowTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"follow"];
    
    NSArray* port = @[@"sixin_img1.png" , @"sixin_img2.png" , @"sixin_img3.png" , @"sixin_img4.png" , @"sixin_img5.jpg" , @"sixin_img6.jpg"];
    NSArray* name = @[@"share小王" , @"share小旭" , @"share小是" , @"share小神" , @"share小经" , @"share小病"];
    
    cell.portImage.image = [UIImage imageNamed:port[indexPath.row]];
    cell.nameLabel.text = name[indexPath.row];
    
    [cell.followBtn setImage:[UIImage imageNamed:@"guanzhu_normal.png"] forState:UIControlStateNormal];
    [cell.followBtn addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchDown];
    
    return cell;
}
- (void)pressBtn1:(UIButton *) btn{
    UIImage *image = [UIImage imageNamed:@"guanzhu_pressed.png"];
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn2:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressBtn2:(UIButton *)btn{
    UIImage *image = [UIImage imageNamed:@"guanzhu_normal.png"];
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchDown];
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
