//
//  PesiAbstactFactory.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "PesiAbstactFactory.h"
#import "PesiCola.h"
#import "PesiBottle.h"
@implementation PesiAbstactFactory

+(Cola *)createCola{
    return [PesiCola new];
}
+(Bottle *)createBottle{
    return [PesiBottle new];
}

@end
