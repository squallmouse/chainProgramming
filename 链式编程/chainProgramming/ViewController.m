//
//  ViewController.m
//  chainProgramming
//
//  Created by 袁昊 on 2018/2/3.
//  Copyright © 2018年 袁昊. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+test.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    Dog *dog = [Dog new];
    dog.eat.eat;
    dog.eat.sleep(100).walk(@"美食街",@"小湖边");
    dog.haha().haha();
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
