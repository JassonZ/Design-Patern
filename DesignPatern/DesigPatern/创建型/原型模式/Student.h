//
//  Student.h
//  DesignPatern
//
//  Created by Jason on 2019/12/22.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject<NSCopying>

@property(nonatomic, copy) NSString * name;
@property(nonatomic, assign) NSInteger age;
@property(nonatomic, copy) NSString * mateClass;
@property(nonatomic, copy) NSString * school;


@end

NS_ASSUME_NONNULL_END
