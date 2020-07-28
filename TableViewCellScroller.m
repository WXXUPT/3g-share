//
//  TableViewCellScroller.m
//  share
//
//  Created by 王旭 on 2020/7/24.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellScroller.h"

@implementation TableViewCellScroller

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//
//    //设置scrollView
//    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, self.contentView.frame.size.width, 300)];
//    //scrollView的真实大小
//    _scrollView.contentSize = CGSizeMake(6*self.contentView.frame.size.width, 300);
//    //滑动到边缘时的弹簧效果
//    _scrollView.bounces = NO;
//    //是否分页显示
//    _scrollView.pagingEnabled = YES;
//    //设置背景颜色，便于观察
//    _scrollView.backgroundColor = [UIColor orangeColor];
//    //设置代理
//    _scrollView.delegate = self;
//
//    //设置数据
//    for (int i = 1; i < 5; i ++) {
//        NSString *imgName;
//        if (i == 1) {
//            //第一张 显示最后一张图片
//            imgName = @"main_img4.jpg";
//        }else if (i == 4){
//            //最后一张 显示第一张图片
//            imgName = @"main_img.jpg";
//        } else {
//            //其他
//            imgName = [NSString stringWithFormat:@"main_img%d.jpg",i];
//        }
//
//        //显示视图
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i*self.contentView.frame.size.width, 0, self.contentView.frame.size.width, 300)];
//        imgView.image = [UIImage imageNamed:imgName];
//        [_scrollView addSubview:imgView];
//    }
//
//    //默认显示ScrollView的第二页，即第一张图片
//    _scrollView.contentOffset = CGPointMake(self.contentView.frame.size.width, 0);
//
//    //设置小圆点
//    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.contentView.frame.size.width/2-20, 350, 20, 20)];
//    _pageControl.numberOfPages = 4;
//    _pageControl.currentPage = 0;
//    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
//    _pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
//
//    [self.contentView addSubview:_scrollView];
//    [self.contentView addSubview:_pageControl];
//    return self;
//}
//
//-(void)viewDidAppear:(BOOL)animated{
//    [self setupLink];
//}
//
////用户手动拖动scrollView时，暂停计时器
//- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
//{
//    _link.paused = YES;
//}
//
////当scrollView停止滚动之后调用，调用此方法
//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    //计算偏移量所对应的页数
//    int page = scrollView.contentOffset.x / self.contentView.frame.size.width;
//
//
//    if (page == 0) {
//        //此时应滚到最后一页
//        //重新设置偏移量
//        scrollView.contentOffset = CGPointMake(self.contentView.frame.size.width*4, 0);
//        //[scrollView setContentOffset:CGPointMake(KScreenWidth*4, 0) animated:NO];
//
//        _pageControl.currentPage = 3;
//    }else if (page == 5){
//        //此时应滚到第一页
//        scrollView.contentOffset = CGPointMake(self.contentView.frame.size.width, 0);
//
//        _pageControl.currentPage = 0;
//    } else {
//        _pageControl.currentPage = page-1;
//    }
//
//    //两秒之后重新启动定时器
//    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(runLink) object:nil];
//    [self performSelector:@selector(runLink) withObject:nil afterDelay:2];
//}
//
//
//-(void)runLink{
//    _link.paused = NO;
//}
//-(void)setupLink{
//    //设定一个定时器
//    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(slideImage)];
//    _link.preferredFramesPerSecond = 1;
//    [_link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
//
//}
//
//-(void)slideImage{
//    int page = _scrollView.contentOffset.x / self.contentView.frame.size.width;
//
//    if (page == 4) {
//        //回到第一页
//        _scrollView.contentOffset = CGPointMake(self.contentView.frame.size.width, 0);
//        //跳转到第二页
//        [_scrollView setContentOffset:CGPointMake(self.contentView.frame.size.width*2, 0) animated:YES];
//
//    } else {
//        //_scrollView.contentOffset = CGPointMake((page+1)*KScreenWidth, 0);
//        [_scrollView setContentOffset:CGPointMake((page+1)*self.contentView.frame.size.width, 0) animated:YES];
//    }
//
//    if (page == 3) {
//        _pageControl.currentPage = 0;
//    }else if(page == 4){
//        _pageControl.currentPage = 1;
//    } else {
//        _pageControl.currentPage = page;
//    }
//
//}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _scrollView = [[UIScrollView alloc] init];
    [self.contentView addSubview:_scrollView];
    
    _pageControl = [[UIPageControl alloc] init];
    [self.contentView addSubview:_pageControl];
    
    _timer = [[NSTimer alloc] init];
    
    for (int i = 0; i < 4; i++) {
        //创建初始化Imageview
        UIImageView *imageView = [[UIImageView alloc]init];
        //设置frame
        imageView.frame = CGRectMake(414 * i, 0, 414, 170);
        //设置显示 图片
        if(i == 0) {
            imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"main_img%d.jpg", i + 1]];
        } else {
            imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"main_img%d.png", i + 1]];
        }
        [_scrollView addSubview:imageView];
    }
     [self addTimerTask];
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
     _scrollView.frame = CGRectMake(0, 0, 414, 175);
    _pageControl.frame = CGRectMake(180, 150, 100, 10) ;
    
    
    //2 设置滚动范围
    _scrollView.contentSize = CGSizeMake(4 * 414, 170);
    _scrollView.bounces = NO;
    _scrollView.scrollEnabled = YES;
    //_scrollView.bouncesZoom = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    
    //3 设置分页
    _scrollView.pagingEnabled = YES;
    
    //4 设置pageControl
    _pageControl.numberOfPages = 4;
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.pageIndicatorTintColor = [UIColor blackColor];
    _pageControl.currentPage = 0;
    
    //5 设置scrollView的代理
    _scrollView.delegate = self;
    
    //6 添加定时器
   
}

- (void)addTimerTask{
    _timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    // 默认是NSDefaultRunLoopMode  但是另外一个属性NSRunLoopCommonModes 能够在多线程中起作用
    [runloop addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    //立即执行定时器的方法  fire 是定时器自带的方法
    [self.timer fire];
}

- (void)nextImage {
    //当前页码
    NSInteger page = self.pageControl.currentPage;
    //如果是到达最后一张
    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
        NSLog(@"diling");
        //设置偏移量  当到达最后一张时候 切换到第一张  不产生从最后一张倒回第一张效果
        self.scrollView.contentOffset = CGPointMake(0, 0);
        [self.scrollView setContentOffset:self.scrollView.contentOffset animated:YES];
    }else{
        page ++;
    }
    CGFloat offsetX = page * [UIScreen mainScreen].bounds.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
}

//正在滚动的时候
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (_scrollView.contentOffset.x == 0) {
        _pageControl.currentPage = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _pageControl.currentPage = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _pageControl.currentPage = 2;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 3)  {
        _pageControl.currentPage = 3;
    }
    
}
//当你点击图片按住不动的时候 把定时器停止
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    //停止定时器
    [self.timer invalidate];
}
//当不再按图片 也就是松开的时候 立马调用计时器方法
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    [self.timer fire];
    //设置自动滚动定时任务
    [self addTimerTask];

}

@end
