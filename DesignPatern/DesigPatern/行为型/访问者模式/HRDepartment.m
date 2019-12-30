//
//  HRDepartment.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "HRDepartment.h"
#import "Employee.h"

@implementation HRDepartment

- (void)visitEmployee:(Employee *)employee{
    NSUInteger weekSalary = employee.workTime * employee.salary;
    NSLog(@"%@ 本周获取薪资:%ld",employee.name, weekSalary);
}
@end
