//
//  BlackTea.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/23.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "BlackTea.h"


@implementation BlackTea
/**
 比集成更加灵活，不同于在编译器起作用，装饰者模式可以在运行时扩展一个对象的功能。另外也可以通过配置文件在运行时选择不同的装饰器，从而实现不同的行为。也可以通过不同的组合，可以实现不同的效果。
 符合开闭原则，装饰者和被装饰者可以独立变化。用户可以根据需要增加新的装饰类，在使用时再对其进行组合，原有代码无须改变
 
 装饰者模式需要创建一些具体装饰类，会增加系统的复杂度。
 */

//先加红茶，再加水
+(instancetype)createTea{
    return [self new];
}

-(void)addBlackTea{
    NSLog(@"add black tea");
}

-(void)addLemon{
    NSLog(@"add lemon");
}

@end
