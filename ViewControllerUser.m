//
//  ViewControllerUser.m
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewControllerUser.h"
#import "TableViewCellGouGou5.h"
#import "TableViewCellGouGou6.h"
#import "UploadViewController.h"
#import "SetupViewController.h"
#import "RecommendViewController.h"
#import "MessageViewController.h"
@interface ViewControllerUser ()

@end

@implementation ViewControllerUser

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [UITabBarItem new];
       tabBarItem.image = [[UIImage imageNamed:@"button5_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       tabBarItem.selectedImage = [[UIImage imageNamed:@"button5_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"个人信息";
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.dataSource = self;
    _tableView.delegate  = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[TableViewCellGouGou5 class] forCellReuseIdentifier:@"gougouKing5"];
    [_tableView registerClass:[TableViewCellGouGou6 class] forCellReuseIdentifier:@"gougouKing6"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0) {
        return 1;
    } else {
        return 6;
    }
//    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        return 130;
    } else {
        return 50;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}
- (UITableViewCell* ) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCellGouGou5* cell = [_tableView dequeueReusableCellWithIdentifier:@"gougouKing5"];
//    TableViewCellGouGou6* cell2 = [_tableView dequeueReusableCellWithIdentifier:@"gougouKing6"];
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou5 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing5"];
        }
        cell.txImage.image = [UIImage imageNamed:@"sixin_img1.png"];
        
        cell.writerLabel.text = @"share小白";
        cell.writerLabel.font = [UIFont systemFontOfSize:16];
        
        cell.content1Label.text = @"数媒/设计爱好者";
        cell.content1Label.font = [UIFont systemFontOfSize:12];
        
        cell.content2Label.text = @"开心了就笑，不开心了就过会儿再笑";
        cell.content2Label.font = [UIFont systemFontOfSize:14];
        
        cell.guanzhuImage.image = [UIImage imageNamed:@"img1.png"];
        cell.zanImage.image = [UIImage imageNamed:@"button_zan.png"];
        cell.lookImgae.image = [UIImage imageNamed:@"button_guanzhu.png"];
        
        cell.guanzhuLabel.text = @"15";
        cell.guanzhuLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.guanzhuLabel.font = [UIFont systemFontOfSize:12];
        
        cell.zanLabel.text = @"120";
        cell.zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        
        cell.lookLabel.text = @"80";
        cell.lookLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
        cell.lookLabel.font = [UIFont systemFontOfSize:12];
        
        return cell;
    } else if (indexPath.section == 1) {
        TableViewCellGouGou6* cell2 = [TableViewCellGouGou6 new];
        if (indexPath.row == 0) {
            cell2.imagehh.image = [UIImage imageNamed:@"img2.png"];
            cell2.label.text = @"我上传的";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } else if (indexPath.row == 1) {
            cell2.imagehh.image = [UIImage imageNamed:@"img3.png"];
            cell2.label.text = @"我的信息";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } else if (indexPath.row == 2) {
            cell2.imagehh.image = [UIImage imageNamed:@"img4.png"];
            cell2.label.text = @"我推荐的";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } else if (indexPath.row == 3) {
            cell2.imagehh.image = [UIImage imageNamed:@"img5.png"];
            cell2.label.text = @"院系通知";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } else if (indexPath.row == 4) {
            cell2.imagehh.image = [UIImage imageNamed:@"img6.png"];
            cell2.label.text = @"设置";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } else if (indexPath.row == 5) {
            cell2.imagehh.image = [UIImage imageNamed:@"img7.png"];
            cell2.label.text = @"退出";
            cell2.label.font = [UIFont systemFontOfSize:14];
            [cell2.btn setImage:[UIImage imageNamed:@"img33.png"] forState:UIControlStateNormal];
            return cell2;
        } 
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIImage* back = [[UIImage imageNamed:@"back_img.png"] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UIBarButtonItem* item = [UIBarButtonItem new];
    self.navigationItem.backBarButtonItem = item;
    
    self.navigationController.navigationBar.backIndicatorImage = back;
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = back;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
   
    if (indexPath.row == 0) {
        item.title = @"我上传的";
        UploadViewController* viewController = [UploadViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 1) {
        item.title = @"我的信息";
        MessageViewController* viewController = [MessageViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 2) {
        item.title = @"我推荐的";
        RecommendViewController* viewController = [RecommendViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 3) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"进来就走不了" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else if (indexPath.row == 4) {
        item.title = @"设置";
        SetupViewController* viewController = [SetupViewController new];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 5) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"进来就走不了" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
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
