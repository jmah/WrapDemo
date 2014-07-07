//
//  WrapDemoViewController.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  This is free and unencumbered software released into the public domain.
//

#import "WrapDemoViewController.h"


@implementation WrapDemoViewController

- (void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];
	[self updatePrimaryViewWidth];
}

- (IBAction)updatePrimaryViewWidth
{
	self.primaryWidthConstraint.constant = (self.view.bounds.size.width * self.widthSlider.value);
}

@end
