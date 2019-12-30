//
//  FADepartment.m
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import "FADepartment.h"
#import "Employee.h"

@implementation FADepartment

- (void)visitEmployee:(Employee *)employee{
    if (employee.workTime > 40) {
        NSLog(@"%@ 工作时间满 40 小时",employee.name);
    }else{
        NSLog(@"%@ 工作时间不满 40 小时，要警告！",employee.name);
    }
}
@end
