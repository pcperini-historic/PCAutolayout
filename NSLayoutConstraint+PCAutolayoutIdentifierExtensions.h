//
//  NSLayoutConstraint+PCAutolayoutIdentifierExtensions.h
//  PCAutolayout
//
//  Created by Patrick Perini on 8/14/13.
//  Copyright (c) 2013 pcperini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (PCAutolayoutIdentifierExtensions)

#pragma mark - Properties
/*!
 *  @property identifier A string identifying the constraint.
 */
@property (nonatomic) NSString *identifier;

@end
