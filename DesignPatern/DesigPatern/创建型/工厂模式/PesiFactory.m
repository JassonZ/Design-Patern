//
//  PesiFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "PesiFactory.h"
#import "PesiCola.h"

@implementation PesiFactory
+(Cola *)createCola{
    return [PesiCola new];
}
@end
