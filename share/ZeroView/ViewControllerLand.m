//
//  ViewControllerLand.m
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewControllerLand.h"
#import "ViewControllerHome.h"
#import "ViewControllerSearch.h"
#import "ViewControllerUser.h"

#import "ViewControllerArticle.h"
#import "ViewControllerActivity.h"
@interface ViewControllerLand ()

@end

@implementation ViewControllerLand

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userStr = [NSString new];
    _passStr = [NSString new];
    
    UIImage* backGround = [UIImage imageNamed:@"kaiji1.png"];
    self.view.layer.contents = (id) backGround.CGImage;
    
    UIImageView* logo01 = [[UIImageView alloc] initWithFrame:CGRectMake(135, 80, 120, 120)];
    [logo01 setImage:[UIImage imageNamed:@"kaiji_logo.psd"]];
    
    UILabel* logo02 = [[UILabel alloc] initWithFrame:CGRectMake(108, 180, 200, 100)];
    logo02.text = @"SHARE";
    logo02.font = [UIFont systemFontOfSize:55];
    logo02.textColor = [UIColor whiteColor];
    
//    UIImageView* user = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0.01, 0.01)];
//    UIImageView* pass = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    UIImageView* user = [UIImageView new];
    UIImageView* pass = [UIImageView new];
    user.frame = CGRectMake(0, 0, 40, 40);
    pass.frame = CGRectMake(0, 0, 40, 40);
    user.image = [UIImage imageNamed:@"user_img.png"];
    pass.image = [UIImage imageNamed:@"pass_img.png"];

    _userLand = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 270, 50)];
    _passWord = [[UITextField alloc] initWithFrame:CGRectMake(50, 370, 270, 50)];
    _userLand.delegate = self;
    _passWord.delegate = self;
    
    [_userLand setBorderStyle:UITextBorderStyleRoundedRect];
    _userLand.leftView = user;
    _userLand.leftViewMode = UITextFieldViewModeAlways;

    [_passWord setBorderStyle:UITextBorderStyleRoundedRect];
    _passWord.leftView = pass;
    _passWord.leftViewMode = UITextFieldViewModeAlways;
    _passWord.secureTextEntry = YES;

    _userLand.placeholder = @"请输入用户名...";
    _passWord.placeholder = @"请输入密码...";
    
    UIButton* btnLand = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnLand setTitle:@"登陆" forState:UIControlStateNormal];
    btnLand.titleLabel.font = [UIFont systemFontOfSize:20];
    btnLand.backgroundColor = [UIColor clearColor];
    btnLand.tintColor = [UIColor whiteColor];
    btnLand.layer.masksToBounds = YES;
    btnLand.layer.borderWidth = 2;
    btnLand.layer.borderColor = [UIColor whiteColor].CGColor;
    btnLand.frame = CGRectMake(60, 470, 100, 40);
    [btnLand addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnLand];
    
    UIButton* btnRegi = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnRegi setTitle:@"注册" forState:UIControlStateNormal];
    btnRegi.titleLabel.font = [UIFont systemFontOfSize:20];
    btnRegi.backgroundColor = [UIColor clearColor];
    btnRegi.tintColor = [UIColor whiteColor];
    btnRegi.layer.masksToBounds = YES;
    btnRegi.layer.borderWidth = 2;
    btnRegi.layer.borderColor = [UIColor whiteColor].CGColor;
    btnRegi.frame = CGRectMake(215, 470, 100, 40);
    [btnRegi addTarget:self action:@selector(pressRegi) forControlEvents:UIControlEventTouchDown];
    
    UIButton* autoLand = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    autoLand.frame = CGRectMake(45, 540, 20, 20);
    [autoLand setImage:[UIImage imageNamed:@"checkbox_unchecked.png"] forState:UIControlStateNormal];
    [autoLand addTarget:self action:@selector(pressClose:) forControlEvents:UIControlEventTouchDown];
    
    UILabel* autoLabel = [[UILabel alloc] initWithFrame:CGRectMake(75, 540, 100, 20)];
    autoLabel.text = @"自动登陆";
    autoLabel.font = [UIFont systemFontOfSize:15];
    autoLabel.textColor = [UIColor blueColor];
    
    //e
    [self.view addSubview:btnRegi];
    [self.view addSubview:logo01];
    [self.view addSubview:logo02];
    [self.view addSubview:_userLand];
    [self.view addSubview:_passWord];
    [self.view addSubview:autoLabel];
    [self.view addSubview:autoLand];
}
- (void) pressLand:(UIButton*) btn
{
    NSString* userUp = @"123";      //预定账号密码
    NSString* passUp = @"123";
    
    NSString* userIn = _userLand.text;
    NSString* passIn = _passWord.text;
    
    if (([userIn isEqualToString:userUp] && [passIn isEqualToString:passUp]) || ([passIn isEqualToString:_passStr] && [userIn isEqualToString:_userStr])) {
        
//创建控制器
        ViewControllerHome* home = [ViewControllerHome new];
        ViewControllerSearch* search = [ViewControllerSearch new];
        ViewControllerArticle* article = [ViewControllerArticle new];
        ViewControllerActivity* activity = [ViewControllerActivity new];
        ViewControllerUser* user = [ViewControllerUser new];
        
        home.view.backgroundColor = [UIColor whiteColor];
        search.view.backgroundColor = [UIColor whiteColor];
        article.view.backgroundColor = [UIColor whiteColor];
        activity.view.backgroundColor = [UIColor whiteColor];
        user.view.backgroundColor = [UIColor whiteColor];
        
        home.view.backgroundColor = [UIColor whiteColor];
        search.view.backgroundColor = [UIColor whiteColor];
        article.view.backgroundColor = [UIColor whiteColor];
        activity.view.backgroundColor = [UIColor whiteColor];
        user.view.backgroundColor = [UIColor whiteColor];
   
//创建导航栏
        UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:home];
        UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:search];
        UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:article];
        UINavigationController* nav4 = [[UINavigationController alloc] initWithRootViewController:activity];
        UINavigationController* nav5 = [[UINavigationController alloc] initWithRootViewController:user];
        
//调色
        nav1.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
        [nav1.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
        nav2.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
        [nav2.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
        nav3.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
        [nav3.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
        nav4.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
        [nav4.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
        nav5.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.7 alpha:1.0];
        [nav5.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
        
//创建分栏控制器
        UITabBarController* tbController = [UITabBarController new];
        
//        tbController.tabBar.backgroundColor = [UIColor blackColor];
        tbController.tabBar.barTintColor = [UIColor blackColor];
        NSArray* arrayVc = [NSArray arrayWithObjects:nav1, nav2, nav3, nav4, nav5, nil];
        
        tbController.viewControllers = arrayVc;
        self.view.window.rootViewController = tbController;
        tbController.tabBar.translucent = NO;  //不透明
        
    } else {
        //创建警告窗口
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号或密码不正确" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:alertAction];
        [self presentViewController:alert animated:NO completion:nil];
        
    }
}

- (void)pressClose: (UIButton *) btn
{
    UIImage *autoOpen = [UIImage imageNamed:@"checkbox_checked.png"];
    [btn setImage:autoOpen forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressOpen:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressOpen: (UIButton *) btn
{
    UIImage *autoClose = [UIImage imageNamed:@"checkbox_unchecked.png"];
    [btn setImage:autoClose forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressClose:) forControlEvents:UIControlEventTouchDown];
}

- (void) pressRegi
{
    ViewControllerRegister* root = [ViewControllerRegister new];

    root.delegate = self;

    


//    root.userTextField.text = self.userLand.text;
//    root.passTextField.text = self.passWord.text;
//    NSLog(@“%@ %@”， )


    [self presentViewController:root animated:NO completion:nil];

}


- (void) passContent:(NSString *)userName andPass:(NSString*)userPass
{
    self.userLand.text = userName;
    self.passWord.text = userPass;
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
