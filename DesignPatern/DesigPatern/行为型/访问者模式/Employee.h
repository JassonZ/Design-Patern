//
//  Employee.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Department;
NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property(nonatomic, copy) NSString * name;
@property(nonatomic, assign) NSUInteger workTime;
@property(nonatomic, assign) NSUInteger salary;

- (void)accept:(Department *)department;

@end

NS_ASSUME_NONNULL_END
