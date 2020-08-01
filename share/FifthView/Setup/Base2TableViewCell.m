//
//  Base2TableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "Base2TableViewCell.h"

@implementation Base2TableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _contentLabel = [UILabel new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_contentLabel];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _nameLabel.frame = CGRectMake(35, 12, 40, 20);
    _nameLabel.font = [UIFont systemFontOfSize:16];
    
    _contentLabel.frame = CGRectMake(110, 12, 300, 20);
    _contentLabel.font = [UIFont systemFontOfSize:15];
}
@end
