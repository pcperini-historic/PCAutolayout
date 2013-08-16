//
//  UIView+PCAutolayoutConstraintExtensions.h
//  PCAutolayout
//
//  Created by Patrick Perini on 8/2/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PCAutolayoutConstraintExtensions)

#pragma mark - Properties
/*!
 *  @property horizontalOriginConstraint The primary constraint responsible for the view's horizontal origin.
 *  @discussion The constraint might be applied to the view's superview.
 */
@property (nonatomic, readonly) NSLayoutConstraint *horizontalOriginConstraint;

/*!
 *  @property verticalOriginConstraint The primary constraint responsible for the view's vertical origin.
 *  @discussion The constraint might be applied to the view's superview.
 */
@property (nonatomic, readonly) NSLayoutConstraint *verticalOriginConstraint;

/*!
 *  @property widthConstraint The primary constraint responsible for the view's width.
 *  @discussion The constraint might be applied to the view's superview.
 */
@property (nonatomic, readonly) NSLayoutConstraint *widthConstraint;

/*!
 *  @property heightConstraint The primary constraint responsible for the view's height.
 *  @discussion The constraint might be applied to the view's superview.
 */
@property (nonatomic, readonly) NSLayoutConstraint *heightConstraint;

#pragma mark - Accessors
/*!
 *  Returns the constraint with the given identifier.
 *  @param identifier The constraint's identifier.
 *  @result The constraint with the given identifier.
 */
- (NSLayoutConstraint *)constraintWithIdentifier:(NSString *)identifier;

#pragma mark - Mutators
/*!
 *  Adds the given constraint to the receiver with the given identifier.
 *  @param constraint The constraint to add.
 *  @param identifier The identifier for the constraint.
 */
- (void)addConstraint:(NSLayoutConstraint *)constraint withIdentifier:(NSString *)identifier;

@end
