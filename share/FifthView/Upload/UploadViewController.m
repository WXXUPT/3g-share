//
//  UploadViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "UploadViewController.h"
#import "UploadTableViewCell.h"
@interface UploadViewController ()

@end

@implementation UploadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tabBarItem = [UITabBarItem new];
       tabBarItem.image = [[UIImage imageNamed:@"button3_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       tabBarItem.selectedImage = [[UIImage imageNamed:@"button3_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
       self.tabBarItem = tabBarItem;
    
    NSArray *array = @[@"上传时间", @"推荐最多", @"分享最多"];
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:array];
    [self.view addSubview:_segmentedControl];
    
    _segmentedControl.frame = CGRectMake(0, 88, 414, 45);
    _segmentedControl.tintColor = [UIColor whiteColor];
    _segmentedControl.selectedSegmentIndex = 0;
    _segmentedControl.momentary = NO;
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateNormal];
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.45 green:0.45 blue:0.45 alpha:1.0],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateSelected];
    [_segmentedControl setBackgroundImage:[UIImage imageNamed:@"essay_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [_segmentedControl addTarget:self action:@selector(roll:) forControlEvents:UIControlEventValueChanged];
        
    _scrollView.bounces = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 133, [UIScreen mainScreen].bounds.size.width, 600)];
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * 3, 600);
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.scrollEnabled = YES;
    _scrollView.bouncesZoom = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    
    _tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 600) style:UITableViewStylePlain];
    _tableView1.delegate = self;
    _tableView1.dataSource = self;
    _tableView1.tag = 101;
    [self.scrollView addSubview:_tableView1];
    _tableView2 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, 600) style:UITableViewStylePlain];
    _tableView2.delegate = self;
    _tableView2.dataSource = self;
    _tableView2.tag = 102;
    [self.scrollView addSubview:_tableView2];
    _tableView3 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width * 2, 0, [UIScreen mainScreen].bounds.size.width, 600) style:UITableViewStylePlain];
    _tableView3.dataSource = self;
    _tableView3.delegate = self;
    [self.scrollView addSubview:_tableView3];
        
    [_tableView1 registerClass:[UploadTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView2 registerClass:[UploadTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableView3 registerClass:[UploadTableViewCell class] forCellReuseIdentifier:@"3"];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 140;
}
- (void)roll:(UISegmentedControl *) seg
{
    
    NSInteger selectindext = _segmentedControl.selectedSegmentIndex;
    if(selectindext == 0){
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    if (selectindext == 1){
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width, 0) animated:YES];
    }
    if(selectindext == 2) {
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width * 2, 0) animated:YES];
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *) scrollView
{
    
    if (_scrollView.contentOffset.x == 0) {
        _segmentedControl.selectedSegmentIndex = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _segmentedControl.selectedSegmentIndex = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _segmentedControl.selectedSegmentIndex = 2;
    }

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(tableView.tag == 101)
    {
        UploadTableViewCell *cell1 = [_tableView1 dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        
        NSArray *imageArr = @[@"image-30.jpg", @"image-22.jpg", @"image-11.jpg", @"image-29.jpg", @"image-5.jpg"];
        NSArray *nameArr = @[@"如期而至", @"duck的学问", @"您的故事", @"八月的惊喜", @"我们在夏枝繁茂时再见"];
        NSArray *writerArr = @[@"share小王", @"share小旭", @"share小神", @"share小经", @"share小病"];
        NSArray *timeArr = @[@"16分钟前", @"20分钟前", @"25分钟前", @"1小时前", @"2小时前"];
        
        cell1.nameLabel.text = nameArr[indexPath.row];
        cell1.writerLabel.text = writerArr[indexPath.row];
        cell1.showImage.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell1.timeLabel.text = timeArr[indexPath.row];
        
        return cell1;
        
    } else if(tableView.tag == 102){
        UploadTableViewCell *cell2 = [_tableView2 dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        
        NSArray *nameArr = @[@"你的故事", @"八月的惊喜", @"如期而至",  @"我们在夏枝繁茂时再见", @"duck的学问"];
        NSArray *imageArr = @[@"image-8.jpg", @"image-10.jpg",@"image-13.jpg", @"image-15.jpg", @"image-18.jpg"];
        NSArray *writerArr = @[@"share小王", @"share小旭", @"share小神", @"share小经", @"share小病"];
        NSArray *timeArr = @[@"2分钟前", @"5分钟前", @"9分钟前", @"20分钟前", @"59分钟前"];
        
        cell2.nameLabel.text = nameArr[indexPath.row];
        cell2.writerLabel.text = writerArr[indexPath.row];
        cell2.showImage.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell2.timeLabel.text = timeArr[indexPath.row];
        
        return cell2;
        
    } else {
        UploadTableViewCell *cell3 = [_tableView3 dequeueReusableCellWithIdentifier:@"3" forIndexPath:indexPath];
        
        NSArray *nameArr = @[@"我们在夏枝繁茂时再见", @"八月的惊喜", @"你的故事", @"duck的学问",@"如期而至"];
        NSArray *imageArr = @[@"image-19.jpg", @"image-23.jpg", @"image-7.jpg", @"image-9.jpg",@"image-1.jpg"];
        NSArray *writerArr = @[@"share小王", @"share小旭", @"share小神", @"share小经", @"share小病"];
        NSArray *timeArr = @[@"2分钟前", @"9分钟前", @"30分钟前", @"45分钟前", @"59分钟前"];
        
        cell3.nameLabel.text = nameArr[indexPath.row];
        cell3.writerLabel.text = writerArr[indexPath.row];
        cell3.showImage.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell3.timeLabel.text = timeArr[indexPath.row];
        
        return cell3;
        
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
