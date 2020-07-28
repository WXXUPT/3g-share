//
//  RecommendTableViewCell.h
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RecommendTableViewCell : UITableViewCell
@property (nonatomic , strong) UILabel* nameLabel;
@property (nonatomic , strong) UILabel* writerLabel;
@property (nonatomic , strong) UILabel* content01Label;
@property (nonatomic , strong) UILabel* content02Label;
@property (nonatomic , strong) UILabel* zanLabel;
@property (nonatomic , strong) UILabel* loolLabel;
@property (nonatomic , strong) UILabel* shareLabel;
@property (nonatomic , strong) UIImageView* showImage;
@property (nonatomic , strong) UIImageView* zanImage;
@property (nonatomic , strong) UIImageView* lookImage;
@property (nonatomic , strong) UIImageView* shareImage;

@end

NS_ASSUME_NONNULL_END
