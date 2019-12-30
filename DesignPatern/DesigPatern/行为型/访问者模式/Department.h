//
//  Department.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 增加新的访问操作很方便。使用访问者模式，增加新的访问操作就意味着增加一个新的具体访问者类，实现简单，无须修改源代码，符合开闭原则。
 将有关元素对象的访问行为集中到一个访问者对象中，而不是分散在一个个的元素类中。类的职责更加清晰，有利于对象结构中元素对象的复用，相同的对象结构可以供多个不同的访问者访问。
 让用户能够在不修改现有元素类层次结构的情况下，定义作用于该层次结构的操作。
 缺点：
 增加新的元素类很困难。在访问者模式中，每增加一个新的元素类都意味着要在抽象访问者角色中增加一个新的抽象操作，并在每一个具体访问者类中增加相应的具体操作，这违背了开闭原则的要求。
 破坏封装。访问者模式要求访问者对象访问并调用每一个元素对象的操作，这意味着元素对象有时候必须暴露一些自己的内部操作和内部状态，否则无法供访问者访问。
 */
NS_ASSUME_NONNULL_BEGIN
@class Employee;
@interface Department : NSObject

- (void)visitEmployee:(Employee *)employee;

@end

NS_ASSUME_NONNULL_END
