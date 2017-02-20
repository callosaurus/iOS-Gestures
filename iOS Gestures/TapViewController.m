//
//  TapViewController.m
//  iOS Gestures
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(self.view.center.x-50, self.view.center.y-50, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [view addGestureRecognizer:tapGesture];
    
}

- (void)viewTapped:(UITapGestureRecognizer *)sender
{
//    if ([sender.view.backgroundColor isEqual:[UIColor blackColor]]) {
//        sender.view.backgroundColor = [UIColor whiteColor];
//    } else {
//        sender.view.backgroundColor = [UIColor blackColor];
//    }
    
    //ternary version of above
    sender.view.backgroundColor = [sender.view.backgroundColor isEqual: [UIColor blackColor]] ? [UIColor whiteColor] : [UIColor blackColor];
}

@end
