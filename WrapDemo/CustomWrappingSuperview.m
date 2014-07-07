//
//  CustomWrappingSuperview.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
//

#import "CustomWrappingSuperview.h"
#import "MyWrappingView.h"


@implementation CustomWrappingSuperview
#if 0
- (void)layoutSubviews
{
	[super layoutSubviews];

	CGFloat availableWidth = self.wrappingView.frame.size.width;
	self.wrappingView.preferredMaxLayoutWidth = availableWidth;

	[super layoutSubviews];
}
#endif

- (void)layoutSubviews
{
	NSLayoutConstraint *wrappingViewAsWideAsPossibleConstraint = [NSLayoutConstraint constraintWithItem:self.wrappingView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1.0 constant:1e8];
	wrappingViewAsWideAsPossibleConstraint.priority = [self.wrappingView contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisHorizontal];
	[self.wrappingView addConstraint:wrappingViewAsWideAsPossibleConstraint];

	[super layoutSubviews];

	CGFloat availableWidth = self.wrappingView.frame.size.width;
	self.wrappingView.preferredMaxLayoutWidth = availableWidth;
	[self.wrappingView removeConstraint:wrappingViewAsWideAsPossibleConstraint];

	[super layoutSubviews];
}

- (IBAction)randomizeItemCount
{
	self.wrappingView.itemCount = arc4random_uniform(48);
}

@end
