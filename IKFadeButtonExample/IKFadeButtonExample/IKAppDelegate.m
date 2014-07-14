//
//  IKAppDelegate.m
//  IKFadeButtonExample
//
//  Created by Pablo Villar on 7/14/14.
//  Copyright (c) 2014 Inaka. All rights reserved.
//

#import "IKAppDelegate.h"
#import "IKMainViewController.h"

@implementation IKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [[IKMainViewController alloc] init];
    
    return YES;
}

@end
