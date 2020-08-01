//
//  NewsTableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.setButton = [[UIButton alloc] init];
    [self.contentView addSubview:_setButton];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(42, 17, 270, 20);
    _nameLabel.font = [UIFont systemFontOfSize:15];
    
    _setButton.frame = CGRectMake(320, 17, 20, 20);
    
    
}
@end
