//
//  LabelWrappingSuperview.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  This is free and unencumbered software released into the public domain.
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
