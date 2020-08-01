//
//  PrivateTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "PrivateTableViewCell.h"

@implementation PrivateTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier

{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _portImage = [UIImageView new];
    _nameLabel = [UILabel new];
    _messageLabel = [UILabel new];
    _timeLabel = [UILabel new];
    
    [self.contentView addSubview:_portImage];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_messageLabel];
    [self.contentView addSubview:_timeLabel];
    
    return self;
}
- (void) layoutSubviews
{
    _portImage.frame = CGRectMake(25, 10, 50, 50);
    
    _nameLabel.frame = CGRectMake(105, 15, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:18];
    
    _messageLabel.frame = CGRectMake(105, 40, 250, 15);
    _messageLabel.font = [UIFont systemFontOfSize:12];
    _messageLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    
    _timeLabel.frame = CGRectMake(310, 10, 70, 15);
    _timeLabel.font = [UIFont systemFontOfSize:10];
    _timeLabel.textColor = [UIColor grayColor];
}
@end
