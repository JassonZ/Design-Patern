//
//  Tea.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Tea.h"

@implementation Tea

+(instancetype)createTea{
    NSLog(@"add water");
    return [self new];
}
@end
