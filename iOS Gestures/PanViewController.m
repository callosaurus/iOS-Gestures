//
//  PanViewController.m
//  iOS Gestures
//
//  Created by Callum Davies on 2017-02-16.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)whiteViewPanned:(UIPanGestureRecognizer *)sender {
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    
    CGPoint translationInView = [sender translationInView:self.view];
    
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
    
}


@end
