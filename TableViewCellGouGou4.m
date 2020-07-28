//
//  TableViewCellGouGou4.m
//  share
//
//  Created by 王旭 on 2020/7/23.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellGouGou4.h"

@implementation TableViewCellGouGou4

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.Image01 = [UIImageView new];
    self.Imgae02 = [UIImageView new];
    self.Image03 = [UIImageView new];
    self.Image04 = [UIImageView new];
    self.Image05 = [UIImageView new];
    self.lookImage = [UIImageView new];
    self.shareImage = [UIImageView new];
    self.txImage = [UIImageView new];
    self.zanImage = [UIImageView new];
    self.lookLabel = [UILabel new];
    self.contentLabel = [UILabel new];
    self.nameLabel = [UILabel new];
    self.shareLabel = [UILabel new];
    self.timeLabel = [UILabel new];
    self.writerLabel = [UILabel new];
    self.zanLabel = [UILabel new];
    
    [self.contentView addSubview:_Image01];
    [self.contentView addSubview:_Imgae02];
    [self.contentView addSubview:_Image03];
    [self.contentView addSubview:_Image04];
    [self.contentView addSubview:_Image05];
    [self.contentView addSubview:_lookImage];
    [self.contentView addSubview:_shareImage];
    [self.contentView addSubview:_txImage];
    [self.contentView addSubview:_zanImage];
    [self.contentView addSubview:_lookLabel];
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_shareLabel];
    [self.contentView addSubview:_timeLabel];
    [self.contentView addSubview:_writerLabel];
    [self.contentView addSubview:_zanLabel];
    [self.contentView addSubview:_contentLabel];
    
    return self;
}
- (void) layoutSubviews
{
    _nameLabel.frame = CGRectMake(100, 15, 100, 22);
    _writerLabel.frame = CGRectMake(100, 45, 100, 20);
    _timeLabel.frame = CGRectMake(290, 15, 100, 15);
    _zanLabel.frame = CGRectMake(233, 50, 30, 15);
    _lookLabel.frame = CGRectMake(293, 50, 30, 15);
    _shareLabel.frame = CGRectMake(353, 50, 30, 15);
    _contentLabel.frame = CGRectMake(10, 10, 400, 15);
    
    
    _zanImage.frame = CGRectMake(210, 50, 15, 15);
    _lookImage.frame = CGRectMake(270, 50, 20, 15);
    _shareImage.frame = CGRectMake(330, 50, 15, 15);
    _txImage.frame = CGRectMake(10, 10, 60, 60);
    _Image01.frame = CGRectMake(0, 30, 380, 200);
    _Imgae02.frame = CGRectMake(0, 250, 380, 200);
    _Image03.frame = CGRectMake(100, 470, 200, 300);
    _Image04.frame = CGRectMake(0, 790, 380, 200);
    _Image05.frame = CGRectMake(100, 1010, 200, 300);
}
@end
