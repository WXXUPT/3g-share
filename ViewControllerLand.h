//
//  ViewControllerLand.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerRegister.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerLand : UIViewController
<UITextFieldDelegate, PassValueDelegate>

@property NSString* userStr;         //注册时候用
@property NSString* passStr;
@property UITextField* userLand;
@property UITextField* passWord;
@end

NS_ASSUME_NONNULL_END
