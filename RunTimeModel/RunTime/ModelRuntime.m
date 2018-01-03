//
//  ModelRuntime.m
//  QianQianDog
//
//  Created by wanglei on 2018/1/3.
//  Copyright © 2018年 LongPei. All rights reserved.
//

#import "ModelRuntime.h"
#import <objc/runtime.h>

@implementation ModelRuntime
//获取对象的所有属性 -> NSArray
+ (NSArray *)getAllProperties:(id)model
{
    u_int count;
    objc_property_t *properties = class_copyPropertyList([model class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i<count; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        [propertiesArray addObject:[NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}

//获取model的属性和对应值到字典中 -> NSDictionary
+ (NSDictionary *)getAllPropertiesAndValues:(id)model
{
    NSMutableDictionary *props = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([model class], &outCount);
    for (i = 0; i<outCount; i++)
    {
        objc_property_t property = properties[i];
        const char* char_f = property_getName(property);
        NSString *propertyName = [NSString stringWithUTF8String:char_f];
        id propertyValue = [model valueForKey:(NSString *)propertyName];
        if (propertyValue) [props setObject:propertyValue forKey:propertyName];
    }
    free(properties);
    return props;
}

@end
