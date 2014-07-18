//
//  LHGetRunnigTime.h
//  MSSSS
//
//  Created by LiHongli on 14-7-18.
//  Copyright (c) 2014年 易到用车22. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MethodBlock)();
typedef void(^ResultBlock)(double runtime);

@interface LHGetRunnigTime : NSObject

+ (void)getRunningTimeWithEvent:(MethodBlock)methodBlock withRunResultBlock:(ResultBlock)resultBlock;

@end
 