//
//  CustomTabBarController.h
//  JRCustomTabBarController
//
//  Created by Julio Rivas on 10/3/15.
//  Copyright (c) 2015 Julio Rivas. All rights reserved.
//

#import <UIKit/UIKit.h>

static const NSInteger JRCustomTabBarWidthiPad = 80;
static const NSInteger JRCustomTabBarHeightiPhone = 50;

@interface JRCustomTabBarController : UIViewController

@property (nonatomic, strong) IBOutlet UIView *tabBarView;
@property (nonatomic, strong) IBOutlet UIView *containerView;
@property (nonatomic, strong) IBOutlet NSArray *buttons;

@end
