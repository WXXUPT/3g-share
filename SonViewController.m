//
//  SonViewController.m
//  share
//
//  Created by 王旭 on 2020/7/25.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "SonViewController.h"
#import "BigWhiteTableViewCell.h"
@interface SonViewController ()

@end

@implementation SonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 120, 414, 740) style:UITableViewStyleGrouped];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[BigWhiteTableViewCell class] forCellReuseIdentifier:@"bigWhite"];
    
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(5, 110, 400, 40)];
    _textField.text = @"大白";
    _textField.textColor = [UIColor blackColor];

    UIImage *image = [UIImage imageNamed:@"放大镜.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(8, 0, 20, 20);
    
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.keyboardType = UIKeyboardTypeDefault;
    _textField.leftViewMode = UITextFieldViewModeAlways;
    _textField.leftView = imageView;
    _textField.delegate = self;
    
    [self.view addSubview:_textField];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BigWhiteTableViewCell* cell = [BigWhiteTableViewCell new];
    if (indexPath.section == 0) {
        if (cell == nil) {
            cell = [[BigWhiteTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"bigWhite"];
        }
        cell.showImage.image = [UIImage imageNamed:@"dabai1.jpeg"];
        cell.zanImage.image = [UIImage imageNamed:@"button_zan.png"];
        cell.lookImage.image = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.shareImage.image = [UIImage imageNamed:@"button_share.png"];
                                
        cell.nameLabel.text = @"Icon of Baymax";
        cell.writerLabel.text = @"share小白";
        cell.content1Label.text = @"原创-UI-Icon";
        cell.timeLabel.text = @"15分钟前";
        cell.zanLabel.text = @"102";
        cell.lookLabel.text = @"26";
        cell.shareLabel.text = @"20";
        
        cell.nameLabel.font = [UIFont systemFontOfSize:15];
        cell.writerLabel.font = [UIFont systemFontOfSize:13];
        cell.content1Label.font = [UIFont systemFontOfSize:12];
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        cell.lookLabel.font = [UIFont systemFontOfSize:12];
        cell.shareLabel.font = [UIFont systemFontOfSize:12];
        
        return cell;
    } else if (indexPath.section == 1) {
        if (cell == nil) {
            cell = [[BigWhiteTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"bigWhite"];
        }
        cell.showImage.image = [UIImage imageNamed:@"dabai2.jpeg"];
        cell.zanImage.image = [UIImage imageNamed:@"button.zan.png"];
        cell.lookImage.image = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.shareImage.image = [UIImage imageNamed:@"button_share.png"];
                                
        cell.nameLabel.text = @"每个人都需要一个大白";
        cell.writerLabel.text = @"share小王";
        cell.content1Label.text = @"原创作品-摄影";
        cell.timeLabel.text = @"1个月前";
        cell.zanLabel.text = @"102";
        cell.lookLabel.text = @"26";
        cell.shareLabel.text = @"20";
        
        cell.nameLabel.font = [UIFont systemFontOfSize:15];
        cell.writerLabel.font = [UIFont systemFontOfSize:13];
        cell.content1Label.font = [UIFont systemFontOfSize:12];
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        cell.zanLabel.font = [UIFont systemFontOfSize:12];
        cell.lookLabel.font = [UIFont systemFontOfSize:12];
        cell.shareLabel.font = [UIFont systemFontOfSize:12];
        
        return cell;
    }
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
