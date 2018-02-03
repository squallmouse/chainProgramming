//
//  Dog.h
//  chainProgramming
//
//  Created by 袁昊 on 2018/2/3.
//  Copyright © 2018年 袁昊. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property (nonatomic,copy) NSString * yu;

-(Dog*)eat;
-(Dog*(^)(int y))sleep;
-(Dog*(^)(NSString* x,NSString* y))walk;
-(Dog*(^)(void))haha;

@end
