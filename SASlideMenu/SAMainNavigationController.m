//
//  SAMainNavigationController.m
//  SASlideMenu
//
//  Created by Anurag Gupta on 14/12/13.
//  Copyright (c) 2013 Shivank Agarwal. All rights reserved.
//

#import "SAMainNavigationController.h"
#import "SAMoreViewController.h"
#import "ViewController.h"

@interface SAMainNavigationController ()

@end

@implementation SAMainNavigationController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
+ (id)navigationController:(UIViewController *)sender
{
    SAMainNavigationController *controller = [[SAMainNavigationController alloc] initWithRootViewController:sender] ;
    return controller;
}

- (void)revealToggle:(UIViewController *)sender

{
    if (self.navigationController == nil) {

        ViewController *moreViewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] ;
        moreViewController.navigationController.navigationBarHidden = YES;
        UINavigationController *moreNavController = [[UINavigationController alloc] initWithRootViewController: moreViewController] ;
        self.navigationController = moreNavController;
    }
    toggle = !toggle;
    [[self.view superview] insertSubview:self.navigationController.view belowSubview:self.view];

    [UIView animateWithDuration:0.35f delay:0 options:UIViewAnimationTransitionFlipFromRight animations:^{

        CGRect frame = self.view.frame;
        frame.origin.x =  toggle * togglePosition_iPHONE;

        self.view.frame = frame;
    } completion:nil];
}

@end
