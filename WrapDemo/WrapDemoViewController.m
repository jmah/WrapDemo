//
//  WrapDemoViewController.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
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
