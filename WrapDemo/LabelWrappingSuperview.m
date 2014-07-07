//
//  LabelWrappingSuperview.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
//

#import "LabelWrappingSuperview.h"


@implementation LabelWrappingSuperview

- (void)layoutSubviews
{
	[super layoutSubviews];

	CGFloat availableLabelWidth = self.label.frame.size.width;
	self.label.preferredMaxLayoutWidth = availableLabelWidth;

	[super layoutSubviews];
}

@end
