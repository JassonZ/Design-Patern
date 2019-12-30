//
//  FulltimeEmployee.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "FulltimeEmployee.h"
#import "Department.h"

@implementation FulltimeEmployee

- (void)accept:(Department *)department{
    [department visitEmployee:self];
}

@end
