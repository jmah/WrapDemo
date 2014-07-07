//
//  main.m
//  WrapDemo
//
//  Created by Jonathon Mah on 2014-07-04.
//  This is free and unencumbered software released into the public domain.
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
