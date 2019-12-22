//
//  CocaFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "CocaFactory.h"
#import "CocaCola.h"

@implementation CocaFactory
+(Cola *)createCola{
    return [CocaCola new];
}

@end
