//
//  Iterator.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Iterator.h"
#import "List.h"

@interface Iterator ()
@property(nonatomic, strong) List * list;
@end

@implementation Iterator
-(instancetype)init{
    if (self = [super init]) {
        _list = [List new];
    }
    return self;
}

-(NSString *)previous{
    _index = MAX(0, _index - 1);
    return [_list.list objectAtIndex:_index];
}
-(NSString *)next{
    _index = MIN(_list.list.count-1, _index + 1);
    return [_list.list objectAtIndex:_index];
}
-(BOOL)isFirst{
    return _index == 0;
}
@end
