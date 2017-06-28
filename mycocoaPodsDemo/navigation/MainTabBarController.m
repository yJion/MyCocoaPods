//
//  MainTabBarController.m
//  MedicineStore
//
//  Created by  zhanglixiang on 16/5/18.
//  Copyright © 2016年 zhanglixiang. All rights reserved.
//

#import "MainTabBarController.h"
#import "Alien_FixNavigatioPushViewController.h"//防止多次push设置的修复

@interface MainTabBarController ()

@end

@implementation MainTabBarController

/**
 设置标签
 
 @param vcsArray 对应的viewController数组
 @param vcTitleArray 对应标题名称
 @param defaultImageArray 默认显示图片数组
 @param selectImageArray 选中图片数组
 */
-(void)setViewControllers:(NSArray *)vcsArray
     viewControllerTitleS:(NSArray *)vcTitleArray
            defaultImages:(NSArray *)defaultImageArray
           selectedImages:(NSArray *)selectImageArray{
    NSMutableArray *navArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < vcsArray.count; i++) {
       
        UIViewController *vc = [vcsArray[i] new];
        Alien_FixNavigatioPushViewController *vcNav = [[Alien_FixNavigatioPushViewController alloc]initWithRootViewController:vc];
    vc.title = vcTitleArray[i];
    UIImage *homeImage=[[UIImage imageNamed:defaultImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *homeImage2 =[[UIImage imageNamed:selectImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *homeTabBarItem = [[UITabBarItem alloc]initWithTitle:vcTitleArray[i] image:homeImage selectedImage:homeImage2];
    homeTabBarItem.tag = 1;
    vc.tabBarItem = homeTabBarItem;
        [navArray addObject:vcNav];
       }
    //添加到TabBar上
    [self setViewControllers:[navArray copy] animated:YES];
}


@end
