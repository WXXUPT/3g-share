//
//  ViewControllerArticle.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerArticle : UIViewController
<UITableViewDelegate , UITableViewDataSource , UIScrollViewDelegate>
@property UITableView* tableView1;
@property UITableView* tableView2;
@property UITableView* tableView3;
@property UIScrollView* scrollView;
@property UISegmentedControl* segmentedControl;
@end

NS_ASSUME_NONNULL_END
