//
//  TableViewCellAct.m
//  share
//
//  Created by 王旭 on 2020/7/23.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "TableViewCellAct.h"

@implementation TableViewCellAct

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _imageWx = [UIImageView new];
    [self.contentView addSubview:_imageWx];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _imageWx.frame = CGRectMake(0, 0, 380, 180);
}
@end
