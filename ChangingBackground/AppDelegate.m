//
//  AppDelegate.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//  Josh Woods' Coding Sample

#import "AppDelegate.h"

@interface AppDelegate () <UINavigationControllerDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController = (UINavigationController *)(self.window.rootViewController);
    navigationController.delegate = self;
    navigationController.navigationBar.hidden = YES;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    return YES;
}

@end
