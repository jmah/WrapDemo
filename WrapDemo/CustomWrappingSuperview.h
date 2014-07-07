//
//  CustomWrappingSuperview.h
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyWrappingView;


@interface CustomWrappingSuperview : UIView

@property (nonatomic) IBOutlet MyWrappingView *wrappingView;
- (IBAction)randomizeItemCount;

@end
