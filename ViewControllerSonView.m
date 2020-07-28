//
//  ViewControllerSonView.m
//  share
//
//  Created by 王旭 on 2020/7/23.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewControllerSonView.h"
#import "TableViewCellGouGou4.h"
@interface ViewControllerSonView ()

@end

@implementation ViewControllerSonView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 730) style:UITableViewStylePlain];

    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    [_tableView registerClass:[TableViewCellGouGou4 class] forCellReuseIdentifier:@"gougouKing2"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0){
        return 80;
    } else {
        return 1300;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCellGouGou4* cell = [tableView dequeueReusableCellWithIdentifier:@"gougouKing2"];
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou4 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing2"];
        }
        UIImage* touxiang = [UIImage imageNamed:@"sixin_img1.png"];
        UIImage* zan = [UIImage imageNamed:@"button_zan.png"];
        UIImage* look = [UIImage imageNamed:@"button_guanzhu.png"];
        UIImage* share = [UIImage imageNamed:@"button_share.png"];
        
        cell.txImage.image= touxiang;
        cell.zanImage.image = zan;
        cell.lookImage.image = look;
        cell.shareImage.image = share;
        
        cell.zanLabel.text = @"102";
        cell.zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        
        cell.lookLabel.text = @"26";
        cell.lookLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.lookLabel.font = [UIFont systemFontOfSize:12];
        
        cell.shareLabel.text = @"20";
        cell.shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.shareLabel.font = [UIFont systemFontOfSize:12];
        
        cell.timeLabel.text = @"15分钟前";
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        
        cell.nameLabel.text = @"假日";
        cell.nameLabel.font = [UIFont systemFontOfSize:20];
        
        cell.writerLabel.text = @"share小白";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        return cell;
    } else if (indexPath.section == 1) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou4 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing2"];
        }
        UIImage* image01 = [UIImage imageNamed:@"works_img1.png"];
        UIImage* image02 = [UIImage imageNamed:@"works_img2.png"];
        UIImage* image03 = [UIImage imageNamed:@"works_img3.png"];
        UIImage* image04 = [UIImage imageNamed:@"works_img4.png"];
        UIImage* image05 = [UIImage imageNamed:@"works_img5.png"];
        
        cell.Image01.image = image01;
        cell.Imgae02.image = image02;
        cell.Image03.image = image03;
        cell.Image04.image = image04;
        cell.Image05.image = image05;
        
        cell.contentLabel.text = @"多希望列车能把我带到有你的城市。";
        cell.contentLabel.font = [UIFont systemFontOfSize:13];
        
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
