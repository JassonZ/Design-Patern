//
//  ViewController.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "ViewController.h"
#import "Cola.h"
#import "SimpleFactory.h"
#import "CocaCola.h"
#import "PesiCola.h"
#import "CocaFactory.h"
#import "PesiFactory.h"
#import "Bottle.h"
#import "CocaAbstractFactory.h"
#import "PesiAbstactFactory.h"
#import "CocaBottle.h"
#import "Builder.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Cola * cocaCola = [SimpleFactory createColaWithType:0];
    if ([cocaCola isKindOfClass:CocaCola.class]) {
        NSLog(@"该对象是可口可乐:%@",cocaCola);
    }
    Cola * pesiCola = [SimpleFactory createColaWithType:1];
    if ([pesiCola isKindOfClass:PesiCola.class]) {
        NSLog(@"该对象是百事可乐:%@",pesiCola);
    }
    
    Cola * faCocaCola = [CocaFactory createCola];
    if ([faCocaCola isKindOfClass:CocaCola.class]) {
        NSLog(@"可口可乐工厂生产的可口可乐:%@",faCocaCola);
    }
    Cola * faPesiCola = [PesiFactory createCola];
    if ([faPesiCola isKindOfClass:PesiCola.class]) {
        NSLog(@"百事可乐工厂c生产的百事可乐:%@",faPesiCola);
    }
    
    Bottle * cocaBottle = [CocaAbstractFactory createBottle];
    if ([cocaBottle isKindOfClass:CocaBottle.class]) {
        NSLog(@"可口可乐主题工厂生产的瓶子:%@",cocaBottle);
    }
    
    Builder * builder = [Builder new];
    [builder buildBody];
    [builder buildEngine];
    [builder buildWheel];
    
    Student * student = [Student new];
    student.name = @"张三";
    student.age = 19;
    student.mateClass = @"初三九班";
    student.school = @"聚龙中学";
    
    /**
    原型模式可以简化对象的创建过程，尤其是对一些创建过程繁琐，包含对象层级比较多的对象，使用原型模式可以节约系统资源，提高对象生产的效率；
     可以很方便的通过改变值来生成新的对象，有些对象的差别可能只在于某些值得不；用原型模式可以快速复制出新的对象并手动修改值即可；
     
    缺点：对象包含的多有对象都需要配备一个克隆方法，这就使得在对象层级比较多的情况下，代码量会很大，也更复杂;
     */
    Student * lisi = [student copy];
    lisi.name = @"李四";
    
}


@end
