//
//  SonViewController.h
//  share
//
//  Created by 王旭 on 2020/7/25.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SonViewController : UIViewController
<UITableViewDelegate , UITableViewDataSource , UITextFieldDelegate>
@property UITableView* tableView;
@property UITextField* textField;
@end

NS_ASSUME_NONNULL_END
