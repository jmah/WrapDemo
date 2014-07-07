//
//  WrapDemoViewController.h
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  This is free and unencumbered software released into the public domain.
//

#import <UIKit/UIKit.h>


@interface WrapDemoViewController : UIViewController

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *primaryWidthConstraint;
@property (strong, nonatomic) IBOutlet UISlider *widthSlider;
- (IBAction)updatePrimaryViewWidth;

@end
