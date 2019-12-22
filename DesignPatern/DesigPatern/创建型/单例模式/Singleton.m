//
//  Singleton.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

/**
 提供了对唯一实例的受控访问。因为单例类封装了它的唯一实例，所以它可以严格控制客户怎样及何时访问它。
 因为该类在系统内存中只存在一个对象，所以可以节约系统资源；
 
 由于单例模式中没有抽象层，因为单例类很难进行扩展；
 对于有垃圾回收系统的语言 Java ，如果对象长时间不被利用，则可能会被回收，那么如果这个单例持有一些数据的话，
 在回收后重新实例化时就不复存在了；
 */
+ (instancetype)shareInstance{
    static Singleton * shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[Singleton alloc]init];
    });
    return shareInstance;
}

@end
