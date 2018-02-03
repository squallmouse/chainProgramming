//
//  Dog.m
//  chainProgramming
//
//  Created by 袁昊 on 2018/2/3.
//  Copyright © 2018年 袁昊. All rights reserved.
//

#import "Dog.h"

@implementation Dog

//-(NSString *)yu{return nil}
//-(void)setYu:(NSString *)yu{}

-(Dog*)eat{
    NSLog(@"吃饭");
    return self;
}

-(Dog*(^)(int y))sleep{
    return ^(int y ){
        NSLog(@"睡觉%d分钟",y);
        return self;
    };
    
   
}
-(Dog*(^)(NSString* x,NSString *y))walk{
    return ^(NSString* x,NSString *y){
        NSLog(@"去%@和%@散步",x,y);
        return self;
    };
}
-(Dog*(^)(void))haha{
    return ^(void){
        NSLog(@"傻笑");
        return self;
    };
}


@end
