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
#import "Tea.h"
#import "BlackTea.h"
#import "Chef.h"
#import "Customer.h"
#import "Waiter.h"
#import "MusicService.h"
#import "FreeMusicService.h"
#import "VipMusicService.h"
#import "UnicomSIMCard.h"
#import "MobileSIMCard.h"
#import "miPhone.h"
#import "iPhone.h"
#import "StandardSIMCard.h"
#import "NanoSIMCard.h"
#import "NanoAdapter.h"
#import "OnePhone.h"
#import "Responder.h"
#import "TV.h"
#import "Command.h"
#import "Controller.h"
#import "Iterator.h"
#import "ChatMediator.h"
#import "ChatMember.h"

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
    
    Tea * tea = [Tea createTea];
    
    BlackTea * blackTea = [BlackTea createTea];
    blackTea.tea = tea;
    
    [blackTea addBlackTea];
    [blackTea addLemon];
    
    Chef * chef = [Chef new];
    
    Customer * customer = [Customer new];
    [customer callWaiter];
    [customer orderingFood:@"小鸡炖蘑菇"];
    [customer orderingFood:@"东坡肉"];
    [customer orderingFood:@"方便面"];
    [customer removeFood:@"方便面"];
    [customer.waiter pushToChef:chef];
    
    MusicService * musicService = [MusicService new];
    FreeMusicService * freeMusicService = [FreeMusicService new];
    VipMusicService * vipMusicService = [VipMusicService new];
    
    freeMusicService.musicServer = musicService;
    vipMusicService.musicService = musicService;
    
    [freeMusicService listenFreeMusic:@"free"];
    [vipMusicService listenMusic:@"全部音乐"];
    
    /**
     桥接模式
     */
    UnicomSIMCard * unicomCard = [UnicomSIMCard new];
    MobileSIMCard * mobileCard = [MobileSIMCard new];
    
    miPhone * mi9 = [miPhone new];
    mi9.simCard = unicomCard;
    iPhone * iphoneX = [iPhone new];
    iphoneX.simCard = mobileCard;
    
    [mi9 launchPhone];
    [iphoneX launchPhone];
    
    /**
     适配器模式
     */
    StandardSIMCard * standardSimCard = [StandardSIMCard new];
    NanoSIMCard * nanoSimCard = [NanoSIMCard new];
    OnePhone * onePhone = [OnePhone new];
    [onePhone setSimCard:standardSimCard];
    
    NanoAdapter * nanoAdapter = [NanoAdapter new];
    nanoAdapter.nanoSimCard = nanoSimCard;
    [onePhone setSimCard:nanoAdapter];
    
    
    /**
     责任链模式
     */
    Responder * successResponder = [Responder new];
    Responder * warmingResponder = [Responder new];
    Responder * httpResponder = [Responder new];
    Responder * serviceResponder = [Responder new];
    
    successResponder.nextResponder = warmingResponder;
    warmingResponder.nextResponder = httpResponder;
    httpResponder.nextResponder = serviceResponder;
    
    successResponder.lowerLimit = 200;
    successResponder.upperLimit = 299;
    successResponder.name = @"success";
    
    warmingResponder.lowerLimit = 300;
    warmingResponder.upperLimit = 399;
    warmingResponder.name = @"warming";
    
    httpResponder.lowerLimit = 400;
    httpResponder.upperLimit = 499;
    httpResponder.name = @"http fail";
    
    serviceResponder.lowerLimit = 500;
    serviceResponder.upperLimit = 599;
    serviceResponder.name = @"service fail";
    
    [successResponder responderWithCode:200];
    [successResponder responderWithCode:310];
    [successResponder responderWithCode:401];
    [successResponder responderWithCode:555];
    [successResponder responderWithCode:600];
    
    
    //命令模式
    TV * tv = [TV new];
    
    Command * turnOnCommand = [Command new];
    turnOnCommand.sel = @selector(turnOn);
    turnOnCommand.target = tv;
    
    Command * turnOffCommand = [Command new];
    turnOffCommand.sel = @selector(turnOff);
    turnOffCommand.target = tv;
    
    Controller * controller = [Controller new];
    [controller invokeCommand:turnOnCommand];
    [controller invokeCommand:turnOffCommand];
    
    
    /**
     迭代器
     */
    Iterator * iterator = [Iterator new];
    NSLog(@"%@",[iterator next]);
    NSLog(@"%@",[iterator next]);
    NSLog(@"%@",[iterator next]);
    NSLog(@"%@",[iterator next]);
    NSLog(@"%@",[iterator previous]);
    
    /**
     中介者模式
     */
    ChatMediator * mediator = [ChatMediator shareMediator];
    //新建聊天室成员
    ChatMember * lily = [ChatMember new];
    ChatMember * tom = [ChatMember new];
    ChatMember * jack = [ChatMember new];
    //成员在中介者处注册
    [mediator registerChatMember:lily];
    [mediator registerChatMember:tom];
    [mediator registerChatMember:jack];
    
    lily.userName = @"lily";
    tom.userName = @"tom";
    jack.userName = @"jack";
    
    [lily sendMsg:@"hello everyone!"];
    [tom sendMsg:@"hello lily!"];
    [jack sendMsg:@"hi tom!"];
    
}


@end
