//
//  WrapDemoViewController.h
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WrapDemoViewController : UIViewController

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *primaryWidthConstraint;
@property (strong, nonatomic) IBOutlet UISlider *widthSlider;
- (IBAction)updatePrimaryViewWidth;

@end
