//
//  ViewControllerSearch.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerSearch : UIViewController
<UITextFieldDelegate>
@property UITableView* tableView;
@property UITextField* searchTextField;
@end

NS_ASSUME_NONNULL_END
