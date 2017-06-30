//
//  TabBarNavView.m
//  Tbabar
//
//  Created by alien on 2017/6/20.
//  Copyright © 2017年 alien. All rights reserved.
//

#import "TabBarNavView.h"

@implementation TabBarNavView
//设置tabbar和navigation的风格
+(void)globalNavigationAndTabbarStyle{
    // tabbar字体选中颜色
    [UITabBar appearance].tintColor = [UIColor redColor];
    //未选中颜色
    [UITabBar appearance].unselectedItemTintColor = [UIColor orangeColor];
    // tabbar背景色
    // [UITabBar appearance].backgroundColor = WHITE_COLOR;
     [UITabBar appearance].barTintColor = [UIColor blackColor];
    
    // 设置TabBar半透明状态，默认为yes，会遮挡住self.view的44像素的高度
    [UITabBar appearance].translucent  = NO;
    
    // 导航栏的半透明效果
    [UINavigationBar appearance].translucent = NO;
    
    // 设置导航条的默认颜色
    [UINavigationBar appearance].barTintColor = [UIColor redColor];
    
    // 导航栏Title的字体、颜色...
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,  [UIFont boldSystemFontOfSize:18.0f],NSFontAttributeName, nil]];
    // 导航返回按钮的颜色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    // 隐藏返回按钮后面的文字
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
    //    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    // 导航栏左右Item的字体、颜色...
    [[UIBarButtonItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName, [UIFont systemFontOfSize:16.0f],NSFontAttributeName, nil] forState:UIControlStateNormal];
}

@end
