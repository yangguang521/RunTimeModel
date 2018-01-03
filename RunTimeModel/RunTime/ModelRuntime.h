//
//  ModelRuntime.h
//  QianQianDog
//
//  Created by wanglei on 2018/1/3.
//  Copyright © 2018年 LongPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModelRuntime : NSObject
//获取对象的所有属性 -> NSArray
+ (NSArray *)getAllProperties:(id)model;
//获取model的属性和对应值到字典中 -> NSDictionary
+ (NSDictionary *)getAllPropertiesAndValues:(id)model;
@end
