//
//  PCAutolayoutViewController.m
//  PCAutolayout
//
//  Created by Patrick Perini on 8/2/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import "PCAutolayoutViewController.h"
#import "UIView+PCAutolayoutConstraintExtensions.h"
#import "NSLayoutConstraint+PCAutolayoutIdentifierExtensions.h"

@interface PCAutolayoutViewController ()

@end

@implementation PCAutolayoutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [[self aView] verticalOriginConstraint]);
    NSLog(@"%@", [[self aView] constraintWithIdentifier: @"widthConstraint"]);
    
    [UIView animateWithDuration: 2
                     animations:^{
                         CGFloat horizontalOrigin = [[[self aView] verticalOriginConstraint] constant];
                         horizontalOrigin -= 10;
                         
                         [[[self aView] verticalOriginConstraint] setConstant: horizontalOrigin];
                         
                         CGFloat width = [[[self aView] widthConstraint] constant];
                         width -= 10;
                         
                         [[[self aView] widthConstraint] setConstant: width];
                         [[self aView] layoutIfNeeded];
                     } completion:^(BOOL finished) {
                         NSLayoutConstraint *constraint = [[self aView] horizontalOriginConstraint];
                         [constraint setConstant: 0];
                     }];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
