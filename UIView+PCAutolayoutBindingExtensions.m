//
//  UIView+PCAutolayoutBindingExtensions.m
//  PCAutolayout
//
//  Created by Patrick Perini on 8/14/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import "UIView+PCAutolayoutBindingExtensions.h"

@implementation UIView (PCAutolayoutBindingExtensions)

#pragma mark - Binding Mutators
- (void)addConstraintBindingToView:(UIView *)view onAttribute:(NSLayoutAttribute)attribute
{
    NSLayoutConstraint *newConstraint;
    if ([self isDescendantOfView: view])
    {
        newConstraint = [NSLayoutConstraint constraintWithItem: view
                                                     attribute: attribute
                                                     relatedBy: NSLayoutRelationEqual
                                                        toItem: self
                                                     attribute: attribute
                                                    multiplier: 1.0
                                                      constant: 0.0];
        [view addConstraint: newConstraint];
    }
    else
    {
        newConstraint = [NSLayoutConstraint constraintWithItem: self
                                                     attribute: attribute
                                                     relatedBy: NSLayoutRelationEqual
                                                        toItem: view
                                                     attribute: attribute
                                                    multiplier: 1.0
                                                      constant: 0.0];
        [self addConstraint: newConstraint];
    }
}

@end
