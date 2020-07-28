//
//  BigWhiteTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/25.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "BigWhiteTableViewCell.h"

@implementation BigWhiteTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _writerLabel = [UILabel new];
    _content1Label = [UILabel new];
    _content2Label = [UILabel new];
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
    [self.contentView addSubview:_content1Label];
    [self.contentView addSubview:_content2Label];
    [self.contentView addSubview:_timeLabel];
    [self.contentView addSubview:_zanLabel];
    [self.contentView addSubview:_lookLabel];
    [self.contentView addSubview:_shareLabel];
    
    [self.contentView addSubview:_showImage];
    [self.contentView addSubview:_zanImage];
    [self.contentView addSubview:_lookImage];
    [self.contentView addSubview:_shareImage];
    
    return self;
}
- (void) layoutSubviews
{
    _nameLabel.frame = CGRectMake(210, 0, 180, 60);
    _writerLabel.frame = CGRectMake(210, 40, 100, 20);
    _content1Label.frame = CGRectMake(210, 60, 200, 15);
    _timeLabel.frame = CGRectMake(210, 75, 200, 15);
    _lookLabel.frame = CGRectMake(293, 110, 30, 20);
    _shareLabel.frame = CGRectMake(353, 110, 30, 20);
    _showImage.frame = CGRectMake(0, 0, 200, 140);
    _zanImage.frame = CGRectMake(210, 110, 20, 15);
    _lookImage.frame = CGRectMake(270, 110, 20, 15);
    _shareImage.frame = CGRectMake(330, 110, 20, 15);
    _zanLabel.frame = CGRectMake(233, 110, 30, 20);
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    _lookLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    _shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
}

@end
