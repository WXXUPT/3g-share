//
//  ChangePassViewController.m
//  share
//
//  Created by 王旭 on 2020/7/27.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ChangePassViewController.h"
#import "ChangePassTableViewCell.h"
@interface ChangePassViewController ()
{
    NSString *pass1Str;
    NSString *pass2Str;
    NSMutableArray *passArr;
}
@end

@implementation ChangePassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStyleGrouped];
    [self.view addSubview:_tableView];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    [_tableView registerClass:[ChangePassTableViewCell class] forCellReuseIdentifier:@"1"];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    button.frame = CGRectMake(150, 340, 85, 30);
    [button setTitle:@"提交" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    button.titleLabel.font = [UIFont systemFontOfSize:17];
    button.tintColor = [UIColor whiteColor];
    button.backgroundColor = [UIColor blackColor];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ChangePassTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
    
    NSArray *name = @[@"旧密码", @"新密码", @"确认密码"];
    NSArray *content = @[@"6-20英文或数字组合", @"请输入新密码", @"请再次确认输入密码"];
    
    [cell.TextField addTarget:self action:@selector(add:) forControlEvents:UIControlEventEditingChanged];
    
    cell.Label.text  = name[indexPath.row];
    cell.TextField.placeholder = content[indexPath.row];
    cell.TextField.secureTextEntry = YES;
    
    return cell;
}
- (void) press
{
    pass1Str = passArr[1];
    pass2Str = passArr[2];
    if([pass1Str isEqualToString:pass2Str]) {

        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"两次密码不一致！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"您已成功修改密码！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    }
}
- (void)add:(UITextField *)textField
{
    [passArr addObject:textField.text];
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
