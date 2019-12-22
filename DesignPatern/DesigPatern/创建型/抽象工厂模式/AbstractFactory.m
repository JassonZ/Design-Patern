//
//  AbstractFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "AbstractFactory.h"
#import "Cola.h"
#import "Bottle.h"

@implementation AbstractFactory

+ (Cola *)createCola{
    return [Cola new];
}
+(Bottle *)createBottle{
    return [Bottle new];
}

@end
