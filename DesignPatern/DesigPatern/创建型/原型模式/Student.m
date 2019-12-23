//
//  Student.m
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)copyWithZone:(NSZone *)zone{
    Student * copy = [[[self class] allocWithZone:zone]init];
    copy.name = self.name;
    copy.age = self.age;
    copy.mateClass = self.mateClass;
    copy.school = self.school;
    return copy;
}

@end
