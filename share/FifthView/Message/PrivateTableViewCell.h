//
//  PrivateTableViewCell.h
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrivateTableViewCell : UITableViewCell

@property (nonatomic , strong) UIImageView* portImage;
@property (nonatomic , strong) UILabel* nameLabel;
@property (nonatomic , strong) UILabel* messageLabel;
@property (nonatomic , strong) UILabel* timeLabel;
@end

NS_ASSUME_NONNULL_END
