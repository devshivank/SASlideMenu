//
//  SAUtils.m
//  SASlideMenu
//
//  Created by Anurag Gupta on 14/12/13.
//  Copyright (c) 2013 Shivank Agarwal. All rights reserved.
//

#import "SAUtils.h"

@implementation SAUtils
+(UIButton *) customButtonWithImage: (NSString *)imageNormal  {

    UIImage * image = [UIImage imageNamed: imageNormal];


    UIButton *customButton = [UIButton buttonWithType:UIButtonTypeCustom];

    [customButton setBackgroundImage:image forState:UIControlStateNormal];

	customButton.frame = CGRectMake(0, 0, image.size.width, image.size.height);

    return customButton;
}
@end
