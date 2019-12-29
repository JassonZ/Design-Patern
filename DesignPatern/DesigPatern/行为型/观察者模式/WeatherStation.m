//
//  WeatherStation.m
//  DesignPatern
//
//  Created by Jason on 2019/12/28.
//  Copyright © 2019 Jason. All rights reserved.
//

/**
 观察者模式可以实现表示层和数据逻辑层的分离，定义了稳定的消息更新传递机制，并抽象了更新接口，使得可以有各种不同的表示层充当具体的观察者角色。
 观察者模式在观察目标和观察者之间建立一个抽象的耦合。观察目标只需要维持一个抽象观察者的集合，无须了解无须了解其具体观察者。由于观察目标和观察者没有紧密地耦合在一起，因此它们可以属于不同的抽象化层次。
 观察者模式支持广播通信，观察目标会向所有已注册的观察者对象发送通知，简化了一对多系统设计的难度。
 观察者模式满足开闭原则的要求，增加新的具体观察者无须修改原有系统代码，在具体观察者与观察目标之间不存在关联关系的情况下，增加新的观察目标也很方便。
 缺点：
 如果一个观察目标对象有很多直接和间接的观察者，将所有的观察者都通知到会花费很多时间。
 如果在观察者模式和观察目标之间存在循环依赖，观察目标会触发它们之间进行循环调用，可能导致系统崩溃。
 观察者模式没有相应的机制让观察者知道所观察的目标是怎么发生变化的，而仅仅只是知道观察目标发生了变化。
 */
#import "WeatherStation.h"
#import "Observer.h"
@interface WeatherStation ()

@property(nonatomic, strong)NSMutableArray * observerList;

@end

@implementation WeatherStation

-(instancetype)init{
    if (self = [super init]) {
        [self addObserver:self forKeyPath:@"state" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

-(void)dealloc{
    [self removeObserver:self forKeyPath:@"state"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSString * state = change[@"new"];
    [_observerList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Observer * ob = obj;
        [ob observeWeather:state];
    }];
}
- (void)registerWithObserver:(Observer *)observer{
    if (!_observerList) {
        _observerList = [NSMutableArray new];
    }
        [_observerList addObject:observer];
    
}
@end
