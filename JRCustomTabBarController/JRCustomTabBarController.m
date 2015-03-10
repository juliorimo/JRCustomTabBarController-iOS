//
//  CustomTabBarController.m
//  JRCustomTabBarController
//
//  Created by Julio Rivas on 10/3/15.
//  Copyright (c) 2015 Julio Rivas. All rights reserved.
//

#import "JRCustomTabBarController.h"



@implementation JRCustomTabBarController
{
    //ViewControllers
    NSMutableDictionary *_viewControllers;
}

#pragma mark - SetUp

- (void)setUp {

    //Tabbar
    if(!_tabBarView){
        _tabBarView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    
    //Container
    if(!_containerView){
        _containerView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    
    //Frame
    CGRect tabBarFrame = CGRectZero;
    CGRect containerFrame = CGRectZero;
    if([[UIDevice currentDevice] userInterfaceIdiom]){
        
        //iPad
        tabBarFrame = CGRectMake(0, 0, JRCustomTabBarWidthiPad, [[UIScreen mainScreen] bounds].size.height);
        containerFrame = CGRectMake(tabBarFrame.origin.x+tabBarFrame.size.width, 0, [[UIScreen mainScreen] bounds].size.width-JRCustomTabBarWidthiPad, [[UIScreen mainScreen] bounds].size.height);
        
    } else {
        
        //iPhone
        tabBarFrame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - JRCustomTabBarHeightiPhone, [[UIScreen mainScreen] bounds].size.width, JRCustomTabBarHeightiPhone);
        containerFrame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-JRCustomTabBarHeightiPhone);
        
    }
    
    //Container
    _containerView.frame = containerFrame;
    _containerView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_containerView];
    
    //Tabbar
    _tabBarView.frame = tabBarFrame;
    _tabBarView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_tabBarView];
}

#pragma mark - View life cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"JRCustomTabBarController - viewDidLoad");
    
    //Controllers
    _viewControllers = [NSMutableDictionary dictionary];
    
    //SetUp
    [self setUp];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"JRCustomTabBarController - viewDidAppear");
}

@end
