//
//  ViewControllerHome.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerHome : UIViewController
<UITableViewDelegate , UITableViewDataSource, UIScrollViewDelegate>
@property (nonatomic , strong) UITableView* tableView;
@property (nonatomic , strong) UIScrollView* scrollView;
@property (nonatomic , strong) UIPageControl* pageControl;
@property (nonatomic , strong) CADisplayLink* link;
@end

NS_ASSUME_NONNULL_END
