//
//  NanoAdapter.m
//  DesignPatern
//
//  Created by Jason on 2019/12/24.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "NanoAdapter.h"
/**
 符合开闭原则，使用适配器而不需要改变现有类，提高类的复用性；
 目标类和适配器解耦，提高程序扩展性
 
 增加了系统复杂性
 */
@implementation NanoAdapter
-(void)standardSize{
    NSLog(@"适配器模式");
}
@end
