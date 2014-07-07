//
//  Animator.h
//  ChangingBackground
//
//  Created by Josh Woods on 7/5/14.
//  Copyright (c) 2014 Ora Interactive. All rights reserved.
//  Josh Woods' Coding Sample

#import <Foundation/Foundation.h>

@interface Animator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresenting) BOOL presenting;

@end
