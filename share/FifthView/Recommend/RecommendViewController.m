//
//  RecommendViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "RecommendViewController.h"
#import "RecommendTableViewCell.h"
@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[RecommendTableViewCell class] forCellReuseIdentifier:@"recommend"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}
- (UITableViewCell* ) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecommendTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"recommend"];
    if (indexPath.section == 0) {
         if (cell == nil) {
             cell = [[RecommendTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"recommend"];
         }
         UIImage* image1 = [UIImage imageNamed:@"list_img1.png"];
         UIImage* image2 = [UIImage imageNamed:@"button_guanzhu.png"];
         UIImage* image3 = [UIImage imageNamed:@"button_share.png"];
         
         cell.showImage.image = image1;
         cell.lookImage.image = image2;
         cell.shareImage.image = image3;
         
         cell.nameLabel.text = @"假日";
         cell.writerLabel.text = @"share小白";
         cell.content01Label.text = @"原创-插画-练习写作";
         cell.content02Label.text = @"15分钟前";
         cell.loolLabel.text = @"26";
         cell.shareLabel.text = @"20";
         
         cell.nameLabel.font = [UIFont systemFontOfSize:18];
         cell.writerLabel.font = [UIFont systemFontOfSize:15];
         cell.content01Label.font = [UIFont systemFontOfSize:13];
         cell.content02Label.font = [UIFont systemFontOfSize:13];
         cell.loolLabel.font = [UIFont systemFontOfSize:13];
         cell.shareLabel.font = [UIFont systemFontOfSize:13];
         
         cell.loolLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         cell.shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         
         return cell;
     } else if (indexPath.section == 1) {
         if (cell == nil) {
             cell = [[RecommendTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"recommend"];
         }
         UIImage* image1 = [UIImage imageNamed:@"list_img2.png"];
         UIImage* image2 = [UIImage imageNamed:@"button_guanzhu.png"];
         UIImage* image3 = [UIImage imageNamed:@"button_share.png"];
         
         cell.showImage.image = image1;
         cell.lookImage.image = image2;
         cell.shareImage.image = image3;
         
         cell.nameLabel.text = @"国外画册欣赏";
         cell.writerLabel.text = @"share小王";
         cell.content01Label.text = @"平面设计-画册设计";
         cell.content02Label.text = @"16分钟前";
         cell.loolLabel.text = @"26";
         cell.shareLabel.text = @"20";
         
         cell.nameLabel.font = [UIFont systemFontOfSize:18];
         cell.writerLabel.font = [UIFont systemFontOfSize:15];
         cell.content01Label.font = [UIFont systemFontOfSize:13];
         cell.content02Label.font = [UIFont systemFontOfSize:13];
         cell.loolLabel.font = [UIFont systemFontOfSize:13];
         cell.shareLabel.font = [UIFont systemFontOfSize:13];
         
         cell.loolLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         cell.shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         return cell;
     } else if (indexPath.section == 2) {
         if (cell == nil) {
             cell = [[RecommendTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing"];
         }
         UIImage* image1 = [UIImage imageNamed:@"list_img3.png"];
         UIImage* image2 = [UIImage imageNamed:@"button_guanzhu.png"];
         UIImage* image3 = [UIImage imageNamed:@"button_share.png"];
         
         cell.showImage.image = image1;
         cell.lookImage.image = image2;
         cell.shareImage.image = image3;
         
         cell.nameLabel.text = @"collection扁平设计";
         cell.writerLabel.text = @"share小吕";
         cell.content01Label.text = @"平面设计-海报设计";
         cell.content02Label.text = @"17分钟前";
         cell.loolLabel.text = @"105";
         cell.shareLabel.text = @"20";
         
         cell.nameLabel.font = [UIFont systemFontOfSize:18];
         cell.writerLabel.font = [UIFont systemFontOfSize:15];
         cell.content01Label.font = [UIFont systemFontOfSize:13];
         cell.content02Label.font = [UIFont systemFontOfSize:13];
         cell.loolLabel.font = [UIFont systemFontOfSize:13];
         cell.shareLabel.font = [UIFont systemFontOfSize:13];
         
         cell.loolLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         cell.shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         return cell;
     } else if (indexPath.section == 3) {
         if (cell == nil) {
             cell = [[RecommendTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"recommend"];
         }
         UIImage* image1 = [UIImage imageNamed:@"list_img4.png"];
         UIImage* image2 = [UIImage imageNamed:@"button_guanzhu.png"];
         UIImage* image3 = [UIImage imageNamed:@"button_share.png"];
         
         cell.showImage.image = image1;
         cell.lookImage.image = image2;
         cell.shareImage.image = image3;
         
         cell.nameLabel.text = @"版式整理术:高效解决多风格要求";
         cell.writerLabel.text = @"share小王";
         cell.content01Label.text = @"平面设计-样式设计";
         cell.content02Label.text = @"18分钟前";
         cell.loolLabel.text = @"654";
         cell.shareLabel.text = @"23";
         
         cell.nameLabel.font = [UIFont systemFontOfSize:18];
         cell.writerLabel.font = [UIFont systemFontOfSize:15];
         cell.content01Label.font = [UIFont systemFontOfSize:13];
         cell.content02Label.font = [UIFont systemFontOfSize:13];
         cell.loolLabel.font = [UIFont systemFontOfSize:13];
         cell.shareLabel.font = [UIFont systemFontOfSize:13];
         
         cell.loolLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
         cell.shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
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
