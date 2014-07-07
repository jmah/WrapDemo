//
//  CustomWrappingSuperview.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  This is free and unencumbered software released into the public domain.
//

#import "CustomWrappingSuperview.h"
#import "MyWrappingView.h"


@implementation CustomWrappingSuperview

- (void)layoutSubviews
{
	[super layoutSubviews];

	CGFloat availableWidth = self.wrappingView.frame.size.width;
	self.wrappingView.preferredMaxLayoutWidth = availableWidth;

	[super layoutSubviews];
}

- (IBAction)randomizeItemCount
{
	self.wrappingView.itemCount = arc4random_uniform(48);
}

@end
