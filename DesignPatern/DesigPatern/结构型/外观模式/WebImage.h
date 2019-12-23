//
//  WebImage.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 实现了客户端与子系统间的解耦：客户端无须知道子系统的接口，简化了客户端调用子系统的调用过程，使得子系统使用起来更加容易。同时便于子系统的扩展和维护。
 符合迪米特法则，子系统只需要将需要外部调用的接口暴露给外观类即可，而且他的接口则可以隐藏起来。
 
 违背了开闭原则，在不引入抽象外观类的情况下，增加新的子系统可能需要修改外观类或客户端代码。
 */
@interface WebImage : NSObject

@end

NS_ASSUME_NONNULL_END
