//
//  Factory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Factory.h"
#import "Cola.h"

@implementation Factory

+(Cola *)createCola{
    return [Cola new];
}
@end
