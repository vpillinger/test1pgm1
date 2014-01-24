//
//  TestViewController.m
//  test1pgm1
//
//  Created by Vincent Pillinger on 1/24/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize myLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [myLabel setTextColor:[UIColor redColor]];
}

- (void)viewDidUnload
{
    [self setMyLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)Swap:(id)sender {
    if([myLabel.textColor isEqual: [UIColor redColor]]){
        [myLabel setTextColor:[UIColor greenColor]];
    }else{
        [myLabel setTextColor:[UIColor redColor]];
    }
}
@end
