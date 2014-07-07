//
//  MyWrappingView.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-06-06.
//  This is free and unencumbered software released into the public domain.
//

#import "MyWrappingView.h"


static const CGSize itemSize = {20, 12};


@implementation MyWrappingView

- (void)setItemCount:(NSInteger)itemCount
{
	_itemCount = itemCount;

	while (self.subviews.count > itemCount) {
		[self.subviews.lastObject removeFromSuperview];
	}

	while (self.subviews.count < itemCount) {
		NSUInteger i = self.subviews.count;
		UIView *view = [[UIView alloc] initWithFrame:(CGRect){{0, 0}, itemSize}];
		view.backgroundColor = [UIColor colorWithHue:((13 + i * 17) % 255) / 255. saturation:0.7 brightness:0.7 alpha:1.0];
		// No constraints whatsoever; all layout done with -setFrame: in -layoutSubviews
		view.translatesAutoresizingMaskIntoConstraints = NO;
		[self addSubview:view];
	}

	[self invalidateIntrinsicContentSize];
}

- (void)setPreferredMaxLayoutWidth:(CGFloat)width
{
	if (self.preferredMaxLayoutWidth == width)
		return;
	_preferredMaxLayoutWidth = width;
	[self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
	if (!self.itemCount)
		return CGSizeZero;

	__block CGRect totalRect = CGRectNull;
	[self enumerateItemRectsForLayoutWidth:self.preferredMaxLayoutWidth usingBlock:^(CGRect itemRect) {
		totalRect = CGRectUnion(itemRect, totalRect);
	}];
	return totalRect.size;
}

- (void)layoutSubviews
{
	[super layoutSubviews];

	// Disable animation during rotation, for example
	BOOL wereEnabled = [UIView areAnimationsEnabled];
	[UIView setAnimationsEnabled:NO];

	NSEnumerator *subviewEnumerator = [self.subviews objectEnumerator];
	[self enumerateItemRectsForLayoutWidth:self.bounds.size.width usingBlock:^(CGRect itemRect) {
		[[subviewEnumerator nextObject] setFrame:itemRect];
	}];

	[UIView setAnimationsEnabled:wereEnabled];
}

- (void)enumerateItemRectsForLayoutWidth:(CGFloat)layoutWidth usingBlock:(void (^)(CGRect itemRect))block
{
	layoutWidth = MAX(layoutWidth, itemSize.width);

	CGFloat x = 0, y = 0;
	for (NSUInteger i = 0; i < self.itemCount; i++) {
		if (x > layoutWidth - itemSize.width) {
			y += itemSize.height;
			x = 0;
		}

		block((CGRect){{x, y}, itemSize});

		x += itemSize.width;
	}
}

@end
