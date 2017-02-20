//
//  SwipeViewController.m
//  iOS Gestures
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (weak, nonatomic) IBOutlet UIView *frontView;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (nonatomic) BOOL isSwiped;

@end

@implementation SwipeViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    //make backView with frame in proper place
    
    //make frontView with frame in proper place
    //    [self.backView addSubview:self.frontView];
    self.isSwiped = NO;
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    
    if (self.isSwiped == NO){
        
        CGRect newFrame = CGRectMake(0,0,170, 51);
        self.frontView.frame = newFrame;
        self.isSwiped = YES;
    }
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    
    if (self.isSwiped == YES){
        
        CGRect newFrame = CGRectMake(0,0,343, 51);
        self.frontView.frame = newFrame;
        self.isSwiped = NO;
    }
}



@end
