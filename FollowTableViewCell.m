//
//  FollowTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "FollowTableViewCell.h"

@implementation FollowTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    _portImage = [UIImageView new];
    _nameLabel = [UILabel new];
    _followBtn = [UIButton new];

    [self.contentView addSubview:_portImage];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_followBtn];

    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _portImage.frame = CGRectMake(25, 10, 50, 50);
    _nameLabel.frame = CGRectMake(105, 20, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:14];
    _followBtn.frame = CGRectMake(290, 20, 60, 30);
}


@end
