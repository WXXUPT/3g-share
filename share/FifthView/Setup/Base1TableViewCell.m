//
//  Base1TableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "Base1TableViewCell.h"

@implementation Base1TableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _portImage = [UIImageView new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_portImage];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _nameLabel.frame = CGRectMake(35, 30, 40, 20);
    _nameLabel.font = [UIFont systemFontOfSize:16];
    
    _portImage.frame = CGRectMake(110, 10, 60, 60);
    _portImage.image = [UIImage imageNamed:@"sixin_img1.png"];
}
@end
