//
//  RecommendTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "RecommendTableViewCell.h"

@implementation RecommendTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [UILabel new];
    self.content01Label = [UILabel new];
    self.content02Label = [UILabel new];
    self.loolLabel = [UILabel new];
    self.shareLabel = [UILabel new];
    self.writerLabel = [UILabel new];
    self.zanLabel = [UILabel new];
    self.lookImage = [UIImageView new];
    self.showImage = [UIImageView new];
    self.shareImage = [UIImageView new];
    self.zanImage = [UIImageView new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_zanLabel];
    [self.contentView addSubview:_loolLabel];
    [self.contentView addSubview:_content01Label];
    [self.contentView addSubview:_content02Label];
    [self.contentView addSubview:_writerLabel];
    [self.contentView addSubview:_shareLabel];
    [self.contentView addSubview:_lookImage];
    [self.contentView addSubview:_showImage];
    [self.contentView addSubview:_zanImage];
    [self.contentView addSubview:_shareImage];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(210, 0, 180, 60);
    _writerLabel.frame = CGRectMake(210, 40, 100, 20);
    _content01Label.frame = CGRectMake(210, 60, 200, 15);
    _content02Label.frame = CGRectMake(210, 75, 200, 15);
    
    _zanImage.frame = CGRectMake(210, 110, 20, 15);
    _zanImage.image = [UIImage imageNamed:@"button_zan.png"];
    
    _zanLabel.frame = CGRectMake(233, 110, 30, 20);
    _zanLabel.text = @"45";
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];

    _loolLabel.frame = CGRectMake(293, 110, 30, 20);
    _loolLabel.text = @"110";
    _loolLabel.font = [UIFont systemFontOfSize:12];
    _loolLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    
    _shareLabel.frame = CGRectMake(353, 110, 30, 20);
    _shareLabel.text = @"170";
    _shareLabel.font = [UIFont systemFontOfSize:12];
    _shareLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    
    _showImage.frame = CGRectMake(0, 0, 200, 140);
    
    _lookImage.frame = CGRectMake(270, 110, 20, 15);
    _lookImage.image = [UIImage imageNamed:@"button_guanzhu.png"];
    
    _shareImage.frame = CGRectMake(330, 110, 20, 15);
    _shareImage.image = [UIImage imageNamed:@"button_share.png"];
}

@end
