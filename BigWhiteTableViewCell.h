//
//  BigWhiteTableViewCell.h
//  share
//
//  Created by 王旭 on 2020/7/25.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BigWhiteTableViewCell : UITableViewCell
@property (nonatomic , strong) UILabel* nameLabel;
@property (nonatomic , strong) UILabel* writerLabel;
@property (nonatomic , strong) UILabel* content1Label;
@property (nonatomic , strong) UILabel* content2Label;
@property (nonatomic , strong) UILabel* timeLabel;
@property (nonatomic , strong) UILabel* zanLabel;
@property (nonatomic , strong) UILabel* lookLabel;
@property (nonatomic , strong) UILabel* shareLabel;
@property (nonatomic , strong) UIImageView* showImage;
@property (nonatomic , strong) UIImageView* zanImage;
@property (nonatomic , strong) UIImageView* lookImage;
@property (nonatomic , strong) UIImageView* shareImage;

@end

NS_ASSUME_NONNULL_END
