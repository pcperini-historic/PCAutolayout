//
//  UIView+PCAutolayoutBindingExtensions.h
//  PCAutolayout
//
//  Created by Patrick Perini on 8/14/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PCAutolayoutBindingExtensions)

#pragma mark - Binding Mutators
/*!
 *  DOCME
 */
- (void)addConstraintBindingToView:(UIView *)view onAttribute:(NSLayoutAttribute)attribute;

@end
