//
//  SetupTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "SetupTableViewCell.h"

@implementation SetupTableViewCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _Image = [UIImageView new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_Image];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _nameLabel.frame = CGRectMake(30, 20, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:16];
    
    _Image.frame = CGRectMake(270, 20, 15, 15);
    _Image.image = [UIImage imageNamed:@"img33.png"];
}
@end
