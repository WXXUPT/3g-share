//
//  Base3TableViewCell.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "Base3TableViewCell.h"

@implementation Base3TableViewCell


- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _nameLabel = [UILabel new];
    _manLabel = [UILabel new];
    _womanLabel = [UILabel new];
    _manButton = [UIButton new];
    _womanButton = [UIButton new];
    
    [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_manButton];
    [self.contentView addSubview:_womanButton];
    [self.contentView addSubview:_manLabel];
    [self.contentView addSubview:_womanLabel];
    
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    _man = YES;
    _nameLabel.frame = CGRectMake(35, 12, 40, 20);
    _nameLabel.font = [UIFont systemFontOfSize:16];
    
    _manButton.frame = CGRectMake(110, 17, 20, 20);
    [_manButton addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    [_manButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
    
    _manLabel.frame = CGRectMake(131, 17, 20, 20);
    _manLabel.font = [UIFont systemFontOfSize:15];
    _manLabel.text = @"男";
    _womanButton.frame = CGRectMake(156, 17, 20, 20);
    [_womanButton addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    [_womanButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
    
    _womanLabel.frame = CGRectMake(177, 17, 20, 20);
    _womanLabel.font = [UIFont systemFontOfSize:15];
    _womanLabel.text = @"女";
}
- (void)press{
    
    if(_man) {
        _man = NO;
        [_manButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
        [_womanButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
    } else {
        _man = YES;
        [_manButton setImage:[UIImage imageNamed:@"boy_button.png"] forState:UIControlStateNormal];
        [_womanButton setImage:[UIImage imageNamed:@"girl_button.png"] forState:UIControlStateNormal];
    }
    
}
@end
