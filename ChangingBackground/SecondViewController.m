//
//  SecondViewController.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//  Josh Woods' Coding Sample

#import "SecondViewController.h"


@implementation SecondViewController

-(IBAction)goBackWasPressed:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //hello, welcome to my coding sample!
}

@end
