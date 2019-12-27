//
//  Command.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/27.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 降低系统的耦合度，由于请求者和接收者之间不存在直接引用，因此请求者和接收者之间实现完全解耦，相同的请求者与接收者之间实现完全解耦，相同的请求者可以对不同的接收者，同样，相同的接收者也可以供不同的请求者使用，两者之间具有良好的独立性。
 新的命令可以很容易地加入到系统中，由于增加新的具体命令类不会影响到其他类，因此增加新的具体命令类很容易，无须修改原有系统源代码，甚至客户类代码，满足开闭原则的要求。
 可以比较容易地设计一个命令队列或宏命令
 为请求的撤销和恢复操作提供了一种设计和实现方案
 
 缺点：使用命令模式可能会导致某些系统有过多的具体命令类。因为针对每一个对请求接收者的调用都需要设计一个具体的命令类，因此在某些系统中可能需要提供大量的具体命令类，这将影响命令模式的使用。
 */
@interface Command : NSObject
@property(nonatomic, assign) SEL sel;
@property(nonatomic, strong) NSObject * target;

- (void)execute;
@end

NS_ASSUME_NONNULL_END
