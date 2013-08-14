//
//  NSLayoutConstraint+PCAutolayoutIdentifierExtensions.m
//  PCAutolayout
//
//  Created by Patrick Perini on 8/14/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import "NSLayoutConstraint+PCAutolayoutIdentifierExtensions.h"
#import <objc/runtime.h>

#pragma mark - Internal Constants
/*!
 *  The static key for associating the identifier with the constraint.
 */
NSString *const NSLayoutConstraintPCAutolayoutIdentifierExtensionsIdentifierKey = @"NSLayoutConstraintPCAutolayoutIdentifierExtensionsIdentifier";

@implementation NSLayoutConstraint (PCAutolayoutIdentifierExtensions)

#pragma mark - Accessors
- (NSString *)identifier
{
    return objc_getAssociatedObject(self, CFBridgingRetain(NSLayoutConstraintPCAutolayoutIdentifierExtensionsIdentifierKey));
}

#pragma mark - Mutators
- (void)setIdentifier:(NSString *)identifier
{
    objc_setAssociatedObject(self, CFBridgingRetain(NSLayoutConstraintPCAutolayoutIdentifierExtensionsIdentifierKey), identifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
