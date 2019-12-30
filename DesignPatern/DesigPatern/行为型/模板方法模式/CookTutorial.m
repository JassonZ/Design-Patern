//
//  CookTutorial.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "CookTutorial.h"

@implementation CookTutorial
- (void)cook{
    [self prepareredients];
    if (![self isHealthyFood]) {
        [self addFat];
    }
    [self addIngredients];
    [self addFlavouring];
}
//抽象方法
-(void)prepareredients{
    
}
- (void)addFat{
    NSLog(@"2.加调和油");
}
//抽象方法
- (void)addIngredients{
    
}
- (void)addFlavouring{
    NSLog(@"4.加盐");
}
- (BOOL)isHealthyFood{
    return NO;
}

@end
