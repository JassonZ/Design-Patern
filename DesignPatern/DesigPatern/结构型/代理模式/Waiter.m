//
//  Waiter.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Waiter.h"
#import "Chef.h"
@implementation Waiter

-(void)orderingFood:(NSString *)food{
    [self.cacheList addObject:food];
}
- (void)removeFood:(NSString *)food{
    [self.cacheList removeObject:food];
}
-(void)pushToChef:(Chef *)chef{
    [chef cookFood:self.cacheList.firstObject];
    [self.cacheList removeObject:self.cacheList.firstObject];
}
-(NSMutableArray *)cacheList{
    if (!_cacheList) {
        _cacheList = [[NSMutableArray alloc]init];
    }
    return _cacheList;
}
@end
