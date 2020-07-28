//
//  MessageTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "MessageTableViewCell.h"

@implementation MessageTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _numberLabel = [UILabel new];
    _jiantouImage = [UIImageView new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_numberLabel];
    [self.contentView addSubview:_jiantouImage];
    
    return self;
}
- (void) layoutSubviews
{
    _nameLabel.frame = CGRectMake(40, 10, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:14];
    
    _numberLabel.frame = CGRectMake(300, 10, 20, 20);
    _numberLabel.font = [UIFont systemFontOfSize:12];
    _numberLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    
    _jiantouImage.frame = CGRectMake(260, 10, 15, 15);
}
@end
