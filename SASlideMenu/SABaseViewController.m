//
//  SABaseViewController.m
//  SASlideMenu
//
//  Created by Anurag Gupta on 14/12/13.
//  Copyright (c) 2013 Shivank Agarwal. All rights reserved.
//

#import "SABaseViewController.h"
#import "SAMainNavigationController.h"
#import "AppDelegate.h"

@interface SABaseViewController ()

@end

@implementation SABaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Add Navigation Bar Buttons
- (void)addSlideMenuButton
{
	UIButton * backButton = [SAUtils customButtonWithImage: Slide_Menu_Button];

	UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithCustomView: backButton];
	[backButton addTarget:self action:@selector(revealToggle) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = leftItem;
}
// Slide Menu Animation ...
-(void)revealToggle
{
    [(SAMainNavigationController *)[self getMainNavigationController]revealToggle:self];
}
- (UINavigationController *)getMainNavigationController
{
    return [[AppDelegate sharedAppDelegate] mainNavigationController];


}
@end
