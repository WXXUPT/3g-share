//
//  ViewControllerUser.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerUser : UIViewController
<UITableViewDelegate , UITableViewDataSource>
@property UITableView* tableView;
@end

NS_ASSUME_NONNULL_END
