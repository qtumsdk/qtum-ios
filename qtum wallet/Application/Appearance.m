//
//  Appearance.m
//  qtum wallet
//
//  Created by Никита Федоренко on 13.12.16.
//  Copyright © 2016 Designsters. All rights reserved.
//

#import "Appearance.h"
#import "UIImage+Extension.h"
#import "TextFieldWithLine.h"
#import "CustomTextField.h"

@implementation Appearance

+(void)setUp{
    [[SVProgressHUD appearance] setDefaultStyle:SVProgressHUDStyleCustom];
    [[SVProgressHUD appearance] setForegroundColor:customBlackColor()];
    [[SVProgressHUD appearance] setBackgroundColor:customRedColor()];
    [[SVProgressHUD appearance] setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [[SVProgressHUD appearance] setMinimumDismissTimeInterval:1];
    [[SVProgressHUD appearance] setCornerRadius:0];
    
//    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"SFUIDisplay-Regular" size:11.0f]}
//                                          forState:UIControlStateNormal];
    //[[UIView appearanceWhenContainedInInstancesOfClasses:@[[UITabBar class]]] setTintColor:customBlueColor()];
//    [[UITabBarItem appearance] setTitleTextAttributes:@{customBlueColor() : NSForegroundColorAttributeName}
//                                             forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:@{customBlueColor() : NSForegroundColorAttributeName}
//                                             forState:UIControlStateSelected];
//    [[UITabBar appearance] setBarTintColor:[UIColor redColor]];
//    [[UITabBar appearance] setTintColor:[UIColor redColor]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : customBlueColor(),
                                                         NSFontAttributeName:[UIFont fontWithName:@"simplonmono-regular" size:11.0f]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : customBlueColor(),
                                                         NSFontAttributeName:[UIFont fontWithName:@"simplonmono-regular" size:11.0f]}
                                             forState:UIControlStateSelected];
    //color for text in searchfield
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setDefaultTextAttributes:@{NSForegroundColorAttributeName:customBlueColor(),
                                                                                                 NSFontAttributeName:[UIFont fontWithName:@"simplonmono-regular" size:15.0f]}];
    //color for placeholder in searchfield
    [[UILabel appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:customBlueColor()];
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setClearButtonMode:UITextFieldViewModeNever];
    [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceDark];
//    [[UITextField appearance] setTintColor:customBlueColor()];
//    [[UITextView appearance] setTintColor:customBlueColor()];

//    
//    [[UITextField appearanceWhenContainedIn:[TextFieldWithLine class], nil] setTintColor:customBlueColor()];
//    [[UITextField appearanceWhenContainedIn:[CustomTextField class], nil] setTintColor:customBlueColor()];

    [self configTabbarUndeline];
    [self configTabbarTopline];
}

+(void)configTabbarUndeline {
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake([UITabBar appearance].frame.origin.x,[UITabBar appearance].frame.origin.y, 50, 56)];
    UIImageView *border = [[UIImageView alloc]initWithFrame:CGRectMake(view.frame.origin.x,view.frame.size.height-6, 50, 6)];
    border.backgroundColor = customBlueColor();
    [view addSubview:border];
    UIImage *img = [UIImage changeViewToImage:view];
    [[UITabBar appearance] setSelectionIndicatorImage:img];
    [[UITabBar appearance] setTintColor: customBlueColor()];
}

+(void)configTabbarTopline{
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0,0, 1, 1)];
    view.backgroundColor = customBlueColor();
    UIImage *img = [UIImage changeViewToImage:view];
    [[UITabBar appearance] setBackgroundImage:[UIImage new]];
    [[UITabBar appearance] setShadowImage:img];
}

@end
