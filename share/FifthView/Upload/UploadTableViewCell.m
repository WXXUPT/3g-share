//
//  UploadTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "UploadTableViewCell.h"

@implementation UploadTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _writerLabel = [UILabel new];
    _timeLabel = [UILabel new];
    _zanLabel = [UILabel new];
    _lookLabel = [UILabel new];
    _shareLabel = [UILabel new];
    _showImage = [UIImageView new];
    _zanImage = [UIImageView new];
    _lookImage = [UIImageView new];
    _shareImage = [UIImageView new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_writerLabel];
    [self.contentView addSubview:_timeLabel];
    [self.contentView addSubview:_zanLabel];
    [self.contentView addSubview:_lookLabel];
    [self.contentView addSubview:_showImage];
    [self.contentView addSubview:_shareLabel];
    [self.contentView addSubview:_lookImage];
    [self.contentView addSubview:_shareImage];
    [self.contentView addSubview:_zanImage];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _showImage.frame = CGRectMake(0, 0, 200, 140);
    
    _nameLabel.frame = CGRectMake(220, 15, 100, 30);
    _writerLabel.frame = CGRectMake(220, 65, 100, 20);
    _timeLabel.frame = CGRectMake(220, 90, 100, 20);
    _writerLabel.font = [UIFont systemFontOfSize:14];
    _nameLabel.font = [UIFont systemFontOfSize:16];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    
    _zanImage.frame = CGRectMake(220, 110, 20, 20);
    [_zanImage setImage:[UIImage imageNamed:@"button_zan.png"]];
    _zanLabel.frame = CGRectMake(245, 110, 30, 20);
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    _zanLabel.text = @"12";
    
    _lookImage.frame = CGRectMake(275, 110, 25, 20);
    [_lookImage setImage:[UIImage imageNamed:@"button_guanzhu.png"]];
    _lookLabel.frame = CGRectMake(300, 110, 30, 20);
    _lookLabel.font = [UIFont systemFontOfSize:12];
    _lookLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    _lookLabel.text = @"55";
    
    _shareImage.frame = CGRectMake(330, 110, 20, 20);
    [_shareImage setImage:[UIImage imageNamed:@"button_share.png"]];
    _shareLabel.frame = CGRectMake(355, 110, 30, 20);
    _shareLabel.font = [UIFont systemFontOfSize:12];
    _shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    _shareLabel.text = @"111";
}
@end

