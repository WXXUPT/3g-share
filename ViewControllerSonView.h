//
//  ViewControllerSonView.h
//  share
//
//  Created by 王旭 on 2020/7/23.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerSonView : UIViewController
<UITableViewDelegate , UITableViewDataSource>
@property UITableView* tableView;
@end

NS_ASSUME_NONNULL_END
