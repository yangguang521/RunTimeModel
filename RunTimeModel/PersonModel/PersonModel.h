//
//  PersonModel.h
//  RunTimeModel
//
//  Created by wanglei on 2018/1/3.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject
//手机号
@property (nonatomic,copy)NSString *phone;
//名字
@property (nonatomic,copy)NSString *name;
//密码
@property (nonatomic,copy)NSString *password;
//年龄
@property (nonatomic,assign)int age;
@end
