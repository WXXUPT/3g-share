//
//  Base3TableViewCell.h
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Base3TableViewCell : UITableViewCell
@property (nonatomic , strong) UILabel* nameLabel;
@property (nonatomic , strong) UILabel* manLabel;
@property (nonatomic , strong) UILabel* womanLabel;
@property (nonatomic , strong) UIButton* manButton;
@property (nonatomic , strong) UIButton* womanButton;
@property BOOL man;
@end

NS_ASSUME_NONNULL_END
