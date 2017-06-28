//
//  Alien_FixNavigatioPushViewController.m
//  Purse
//
//  Created by alien on 16/9/26.
//  Copyright © 2016年 alien. All rights reserved.
//

#import "Alien_FixNavigatioPushViewController.h"

@interface Alien_FixNavigatioPushViewController ()<UINavigationControllerDelegate>

@property (nonatomic,strong)NSArray *navArray;

@end

@implementation Alien_FixNavigatioPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    NSLog(@"%@------%@",_navArray[_navArray.count - 1],viewController.class);
    if ([_navArray[_navArray.count - 1] isKindOfClass:viewController.class]) {
        NSLog(@"被拦截");
        return;
    }
    
    [super pushViewController:viewController animated:animated];
}


#pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    _navArray = [NSArray arrayWithArray:[navigationController viewControllers]];
}

@end
