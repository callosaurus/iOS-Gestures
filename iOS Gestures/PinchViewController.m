//
//  PinchViewController.m
//  iOS Gestures
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(self.view.center.x-50, self.view.center.y-50, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    [view addGestureRecognizer:pinchGesture];
}

- (void)viewPinched:(UIPinchGestureRecognizer *)sender
{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
    scale = 1.0;
}

@end
