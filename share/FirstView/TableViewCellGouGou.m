//
//  TableViewCellGouGou.m
//  share
//
//  Created by 王旭 on 2020/7/23.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellGouGou.h"

@implementation TableViewCellGouGou

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
    self.zanButton = [UIButton new];
    
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
    [self.contentView addSubview:_zanButton];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _zanButton.frame = CGRectMake(210, 110, 20, 15);
    _zanButton.tintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    UIImage *image = [UIImage imageNamed:@"button_zan.png"];
    [_zanButton setImage:image forState:UIControlStateNormal];
    [_zanButton addTarget:self action:@selector(pressZan:) forControlEvents:UIControlEventTouchDown | UIControlStateSelected];
    
    _zanLabel.frame = CGRectMake(233, 110, 30, 20);
    _zanLabel.text = @"102";
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.7 alpha:1.0];
    
    _nameLabel.frame = CGRectMake(210, 0, 180, 60);
    _writerLabel.frame = CGRectMake(210, 40, 100, 20);
    _content01Label.frame = CGRectMake(210, 60, 200, 15);
    _content02Label.frame = CGRectMake(210, 75, 200, 15);
    _loolLabel.frame = CGRectMake(293, 110, 30, 20);
    _shareLabel.frame = CGRectMake(353, 110, 30, 20);
    _showImage.frame = CGRectMake(0, 0, 200, 140);
    _zanImage.frame = CGRectMake(210, 110, 20, 15);
    _lookImage.frame = CGRectMake(270, 110, 20, 15);
    _shareImage.frame = CGRectMake(330, 110, 20, 15);
    
}
- (void) pressZan:(UIButton*) btn
{
    btn.selected = !btn.selected;
    if(btn.selected) {
        _zanLabel.text = @"103";
    } else {
        _zanLabel.text = @"102";
    }
}
@end
