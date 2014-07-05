//
//  main.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  Copyright (c) 2014 Jonathon Mah. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WrapDemoAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation WrapDemoAppDelegate
@end


int main(int argc, char *argv[])
{
	@autoreleasepool {
		return UIApplicationMain(argc, argv, nil, NSStringFromClass([WrapDemoAppDelegate class]));
	}
}
