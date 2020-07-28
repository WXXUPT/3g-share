//
//  ViewControllerRegister.h
//  share
//
//  Created by 王旭 on 2020/7/22.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PassValueDelegate <NSObject>

- (void)passContent:(NSString *)userName andPass:(NSString*)userPass;

@end

@interface ViewControllerRegister : UIViewController
//<UITextFieldDelegate>
@property UITextField *userTextField ;
@property UITextField *passTextField;
@property UITextField *massTextField;
@property NSString *userName;
@property NSString *userPass;
@property UIButton* btn;
@property id<PassValueDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
