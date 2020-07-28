//
//  ViewControllerHome.m
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewControllerHome.h"
#import "TableViewCellGouGou.h"
#import "ViewControllerSonView.h"
//#import "TableViewCellScroller.h"

@interface ViewControllerHome ()

@end

@implementation ViewControllerHome

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
//    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle:@" " image:[UIImage imageNamed:@"radio_button1_normal.png"] selectedImage:[UIImage imageNamed:@"button1_pressed.png"]];
    UITabBarItem* tabBarItem = [UITabBarItem new];
    tabBarItem.image = [[UIImage imageNamed:@"radio_button1_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"button1_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tabBarItem;
    
    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];

    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundView = [UIView new];
    
    [_tableView registerClass:[TableViewCellGouGou class] forCellReuseIdentifier:@"gougouKing"];
//    [_tableView registerClass:[TableViewCellScroller class] forCellReuseIdentifier:@"gougouScro"];
    [self.view addSubview:_tableView];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 155)];
    _scrollView.pagingEnabled = YES;
    for (int i = 1; i <= 5; i++) {
        NSString* imgName;
        if (i == 5) {
            imgName = @"main_img1_png";
        } else {
            imgName = [NSString stringWithFormat:@"main_img%d", i];
        }
        UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i*self.view.frame.size.width, 0, self.view.frame.size.width, 160)];
        imgView.image = [UIImage imageNamed:imgName];
        [_scrollView addSubview:imgView];
    }
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-20, 120, 50, 50)];
    _pageControl.numberOfPages = 4;
    _pageControl.currentPage = 0;
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    _pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
   
    [_tableView addSubview:_scrollView];
    [_tableView addSubview:_pageControl];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0) {
        return 175;
    } else {
        return 140;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCellGouGou* cell = [_tableView dequeueReusableCellWithIdentifier:@"gougouKing" forIndexPath:indexPath];
    if (indexPath.section == 1) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing"];
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
    } else if (indexPath.section == 2) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing"];
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
    } else if (indexPath.section == 3) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing"];
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
    } else if (indexPath.section == 4) {
        if (cell == nil) {
            cell = [[TableViewCellGouGou alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougouKing"];
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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 1 ){
        ViewControllerSonView *holiday = [[ViewControllerSonView alloc] init];
        [self.navigationController pushViewController:holiday animated:NO];
        
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    }
}
- (void) setupLink
{
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(slideImage)];
    _link.preferredFramesPerSecond = 1;
    [_link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
}
- (void) slideImage
{
    int page = _scrollView.contentOffset.x / self.view.frame.size.width;
    if (page == 5) {
        _scrollView.contentOffset = CGPointMake(self.view.frame.size.width, 0);
        [_scrollView setContentOffset:CGPointMake(self.view.frame.size.width*2, 0) animated:YES];
    } else {
        [_scrollView setContentOffset:CGPointMake((page+1)*self.view.frame.size.width, 0) animated:YES];
    }
    if (page == 4) {
        _pageControl.currentPage = 0;
    } else if (page == 5) {
        _pageControl.currentPage = 1;
    } else {
        _pageControl.currentPage = page;
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [self setupLink];
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
