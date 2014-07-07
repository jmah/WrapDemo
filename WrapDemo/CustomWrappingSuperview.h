//
//  CustomWrappingSuperview.h
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-06.
//  This is free and unencumbered software released into the public domain.
//

#import <UIKit/UIKit.h>
@class MyWrappingView;


@interface CustomWrappingSuperview : UIView

@property (nonatomic) IBOutlet MyWrappingView *wrappingView;
- (IBAction)randomizeItemCount;

@end
