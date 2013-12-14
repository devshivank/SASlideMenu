//
//  SAMainNavigationController.h
//  SASlideMenu
//
//  Created by Anurag Gupta on 14/12/13.
//  Copyright (c) 2013 Shivank Agarwal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAMainNavigationController : UINavigationController
{
    BOOL toggle;
}
@property (nonatomic,retain)UINavigationController * navigationController;

+ (id)navigationController:(UIViewController *)sender;
//Slide Animation Method..
- (void)revealToggle:(UIViewController *)sender;

@end
