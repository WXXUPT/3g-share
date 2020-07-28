//
//  ChangePassTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ChangePassTableViewCell.h"

@implementation ChangePassTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.TextField = [[UITextField alloc] init];
    self.Label = [[UILabel alloc] init];
    
    [self.contentView addSubview:_Label];
    [self.contentView addSubview:_TextField];
    return self;
    
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _TextField.frame = CGRectMake(150, 15, 300, 20);
    
    _Label.frame = CGRectMake(35, 15, 100, 20);
    _Label.font = [UIFont systemFontOfSize:17];
    
}
@end
