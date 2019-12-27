//
//  List.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "List.h"

@implementation List
-(instancetype)init{
    if (self = [super init]) {
        _list = @[@"0",@"1",@"2",@"3",@"4",@"5"];
    }
    return self;
}
@end
