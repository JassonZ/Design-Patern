//
//  CocaAbstractFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "CocaAbstractFactory.h"
#import "CocaCola.h"
#import "CocaBottle.h"
@implementation CocaAbstractFactory
/**
 具体产品在应用层代码隔离，不需要关心产品细节。只需要知道自己需要的产品属于哪个工厂即可。
 当一个产品族中的多个对象被设计一起工作时，它能够保证客户端始终只使用y同一个产品族的对象。
 这对一些需要根据当前环境来决定其行为的软件系统来说，是一种非常实用的设计模式。
 
 规定了所有可能被创建的产品集合，产品族中扩展新的产品困难，需要修改抽象
 */
+(Cola *)createCola{
    return [CocaCola new];
}
+(Bottle *)createBottle{
    return [CocaBottle new];
}

@end
