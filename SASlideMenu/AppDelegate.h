//
//  AppDelegate.h
//  SASlideMenu
//
//  Created by Anurag Gupta on 14/12/13.
//  Copyright (c) 2013 Shivank Agarwal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SAMainNavigationController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (nonatomic,strong) SAMainNavigationController * mainNavigationController;

+ (AppDelegate *)sharedAppDelegate;

@end
