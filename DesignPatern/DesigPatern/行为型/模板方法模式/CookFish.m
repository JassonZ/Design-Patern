//
//  CookFish.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "CookFish.h"

@implementation CookFish
- (void)prepareredients{
    NSLog(@"1.准备好生鳕鱼");
}
- (void)addIngredients{
    NSLog(@"3.生鳕鱼入锅");
}
- (void)addFlavouring{
    NSLog(@"4.加黑胡椒");
}
- (BOOL)isHealthyFood{
    return YES;
}
@end
