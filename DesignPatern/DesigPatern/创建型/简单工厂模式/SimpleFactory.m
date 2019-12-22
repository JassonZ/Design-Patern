//
//  SimpleFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "SimpleFactory.h"
#import "Cola.h"
#import "CocaCola.h"
#import "PesiCola.h"

@implementation SimpleFactory
/**
 简单工厂模式：适合产品种类比较少而且增多的概率很低的情况；
 如果添加新的产品，就需要修改工厂类原有的判断逻辑，违背了开闭原则；
 开闭原则：一个软件实体应当对扩展开放，对修改关闭。即软件实体应尽量在不修改原有代码的情况下进行扩展。
 */
+(Cola *)createColaWithType:(NSInteger)type{
    switch (type) {
        case 0:
            return [CocaCola new];
            break;
        case 1:
            return [PesiCola new];
            break;
        default:
            return nil;
            break;
    }
}

@end
