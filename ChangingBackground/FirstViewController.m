//
//  FirstViewController.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//  Josh Woods' Coding Sample

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Animator.h"

@interface FirstViewController () <UIViewControllerTransitioningDelegate>


@end

@implementation FirstViewController
{
    BOOL _changeToBlue;
    BOOL _changeToGreen;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //hello, welcome to my coding sample!
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    
    SecondViewController *secondViewController = segue.destinationViewController;
    
    secondViewController.transitioningDelegate = self;
    secondViewController.modalPresentationStyle = UIModalPresentationCustom;
}

#pragma mark - UIViewControllerTransitioningDelegate Methods

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    Animator *animator = [Animator new];
    //Configure the animator
    animator.presenting = YES;
    [UIView animateWithDuration:0.5f animations:^{
        self.containerView.center = CGPointMake(-320, 198);
    } completion:^(BOOL finished) {
        NSLog(@"ContainerView Leaving!");
        [self performSelector:@selector(changeBackgroundToGreen) withObject:nil afterDelay:.4];
    }];
    return animator;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    Animator *animator = [Animator new];
    [UIView animateWithDuration:0.5f animations:^{
        self.containerView.center = CGPointMake(160, 198);
    } completion:^(BOOL finished) {
        NSLog(@"ContainerView is BACK!");
        _changeToBlue = YES;
        [self performSelector:@selector(changeBackgroundToBlue) withObject:nil afterDelay:.4];
    }];
    return animator;
}

- (void)changeBackgroundToBlue
{
    UIImage *toImage = [UIImage imageNamed:@"blue"];
    [UIView transitionWithView:self.view
                      duration:0.5f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.blueImageView.image = toImage;
                    } completion:NULL];
}


- (void)changeBackgroundToGreen
{
    UIImage *toImage = [UIImage imageNamed:@"green"];
    [UIView transitionWithView:self.view
                      duration:0.5f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.blueImageView.image = toImage;
                    } completion:NULL];
}

@end