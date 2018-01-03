//
//  ViewController.m
//  RunTimeModel
//
//  Created by wanglei on 2018/1/3.
//

#import "ViewController.h"
#import "ModelRuntime.h"
#import "PersonModel.h"
@interface ViewController ()
@property (nonatomic,strong)PersonModel *model;
- (IBAction)getModelAllPropertyClick:(UIButton *)sender;
- (IBAction)getModelAllPropertyAndValueClick:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.model = [[PersonModel alloc] init];
    self.model.phone = @"18616655000";
    self.model.password = @"123456";
    self.model.name = @"张三";
    self.model.age = 20;
}

- (IBAction)getModelAllPropertyClick:(UIButton *)sender {
   //获取model所有属性
    NSArray *propertyNameArray = [ModelRuntime getAllProperties:self.model];
    NSLog(@"propertyNameArray=%@",propertyNameArray);
}

- (IBAction)getModelAllPropertyAndValueClick:(UIButton *)sender {
    //获取model所有属性和对应的值
    NSDictionary *dictionary = [ModelRuntime getAllPropertiesAndValues:self.model];
    NSLog(@"dictionary=%@",dictionary);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
