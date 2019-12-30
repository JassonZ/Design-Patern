//
//  CookTutorial.h
//  DesignPatern
//
//  Created by zhangy-bw on 2019/12/30.
//  Copyright © 2019 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 在父类中形式化地定义一个算法，而由它的子类来实现细节的处理，在子类实现详细的处理算法时并不会改变算法中步骤的执行次序。
 模板方法模式是一种代码复用的技术，它在类库设计中尤为重要，它提取了类库中的公共行为，将公共行为放在父类中，而通过其子类来实现不同的行为，它鼓励我们恰当使用继承来实现代码复用。
 可实现一种反向控制结构，通过子类覆盖父类的钩子方法来决定某一特定步骤是否需要执行。
 在模板方法模式中可以通过子类来覆盖父类的基本方法，不同的子类可以提供基本方法的不同实现，更换和增加新的子类很方便，符合单一职责原则和开闭原则。
 缺点：
 需要为每一个基本方法的不同实现提供一个子类，如果父类中可变的基本方法太多，将会导致类的个数增加，系统更加庞大，设计也更加抽象，此时，可结合桥接模式来进行设计。
 */
@interface CookTutorial : NSObject

//烹饪食物 -具体方法
- (void)cook;
//准备食材 -抽象方法
- (void)prepareredients;
//加食用油
- (void)addFat;
//加入食材
- (void)addIngredients;
//加入调味品
- (void)addFlavouring;
//是否为健康食物
- (BOOL)isHealthyFood;
@end

NS_ASSUME_NONNULL_END
