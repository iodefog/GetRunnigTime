//
//  LHGetRunnigTime.m
//  MSSSS
//
//  Created by LiHongli on 14-7-18.
//  Copyright (c) 2014年 易到用车22. All rights reserved.
//

#import "LHGetRunnigTime.h"

@implementation LHGetRunnigTime

+ (void)getRunningTimeWithEvent:(MethodBlock)methodBlock withRunResultBlock:(ResultBlock)resultBlock{
    clock_t start_time = 0;
    clock_t end_time = 0;
    start_time = clock();
    methodBlock();
    end_time = clock();
    double runtime = (double)(end_time - start_time) / (double)CLOCKS_PER_SEC;
    NSLog(@"The method run Time :  %lfs", runtime);
    resultBlock(runtime);
}

@end
