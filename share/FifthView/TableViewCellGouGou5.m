//
//  TableViewCellGouGou5.m
//  share
//
//  Created by 王旭 on 2020/7/24.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellGouGou5.h"

@implementation TableViewCellGouGou5

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _writerLabel = [UILabel new];
    _content1Label = [UILabel new];
    _content2Label = [UILabel new];
    _guanzhuLabel = [UILabel new];
    _zanLabel = [UILabel new];
    _lookLabel = [UILabel new];
    
    _txImage = [UIImageView new];
    _guanzhuImage = [UIImageView new];
    _zanImage = [UIImageView new];
    _lookImgae = [UIImageView new];
    
    [self.contentView addSubview:_writerLabel];
    [self.contentView addSubview:_content1Label];
    [self.contentView addSubview:_content2Label];
    [self.contentView addSubview:_guanzhuLabel];
    [self.contentView addSubview:_zanLabel];
    [self.contentView addSubview:_lookLabel];
    
    [self.contentView addSubview:_txImage];
    [self.contentView addSubview:_guanzhuImage];
    [self.contentView addSubview:_zanImage];
    [self.contentView addSubview:_lookImgae];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _txImage.frame = CGRectMake(20, 10, 100, 100);
    _writerLabel.frame = CGRectMake(135, 13, 100, 20);
    _content1Label.frame = CGRectMake(135, 30, 100, 15);
    _content2Label.frame = CGRectMake(135, 55, 250, 20);
    _guanzhuImage.frame = CGRectMake(135, 108, 15, 15);
    _guanzhuLabel.frame = CGRectMake(160, 108, 20, 20);
    _zanImage.frame = CGRectMake(200, 108, 15, 15);
    _zanLabel.frame = CGRectMake(225, 108, 40, 20);
    _lookImgae.frame = CGRectMake(265, 108, 15, 15);
    _lookLabel.frame = CGRectMake(290, 108, 20, 20);
}
@end
