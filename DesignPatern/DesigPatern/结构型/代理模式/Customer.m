//
//  Customer.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Customer.h"
#import "Waiter.h"

@implementation Customer
/**
 降低系统的耦合度：代理模式能够协调调用者和被调用者，在一定程度上降低了系统的耦合度；
 不同类型的代理可以对客户端对目标对象的访问进行不同的控制
 远程代理，使得客户端可以访问在远程机器上的对象，远程机器可能具有更好的计算性能与处理速度，可以快速响应并处理客户端请求；
 虚拟代理通过使用一个小对象来代表一个大对象，可以减少系统资源的消耗，对系统进行优化并提高运行速度。
 保护代理可以控制客户端对真实对象的使用权限
 
 由于在客户端和被代理对象之间增加了代理对象，可能会让客户端请求的速度变慢
 */
- (Waiter *)callWaiter{
    _waiter = [[Waiter alloc]init];
    return _waiter;
}
- (void)orderingFood:(NSString *)food{
    [_waiter orderingFood:food];
}
- (void)removeFood:(NSString *)food{
    [_waiter removeFood:food];
}
@end
