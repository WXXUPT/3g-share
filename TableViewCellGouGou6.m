//
//  TableViewCellGouGou6.m
//  share
//
//  Created by 王旭 on 2020/7/24.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellGouGou6.h"

@implementation TableViewCellGouGou6

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _imagehh = [UIImageView new];
    _btn = [UIButton new];
    _label = [UILabel new];
    
    [self.contentView addSubview:_imagehh];
    [self.contentView addSubview:_btn];
    [self.contentView addSubview:_label];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _imagehh.frame = CGRectMake(10, 15, 20, 20);
    _btn.frame = CGRectMake(350, 15, 20, 20);
    _label.frame = CGRectMake(40, 15, 200, 20);
}
@end
