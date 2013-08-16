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
 *  Adds the a constraint to the receiver binding it to the given view on the given attribute.
 *  @param view The view to which to bind the receiver.
 *  @param attribute The attribute on which to bind the views.
 *  @discussion This method adds the constraint to the super-most view of the receiver and `view`. The constraint's relationship is Equal, its multiplier is 1, and its constant is 0.
 */
- (void)addConstraintBindingToView:(UIView *)view onAttribute:(NSLayoutAttribute)attribute;

@end
