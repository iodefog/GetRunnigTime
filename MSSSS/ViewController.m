//
//  ViewController.m
//  MSSSS
//
//  Created by LiHongli on 14-7-18.
//  Copyright (c) 2014年 易到用车22. All rights reserved.
//

#import "ViewController.h"
#import "LHGetRunnigTime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [LHGetRunnigTime getRunningTimeWithEvent:^{
        for (int i = 0; i < 10000; i++) {
            NSLog(@"I am %d", i);
        }
    } withRunResultBlock:^(double runtime) {
        
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
