//
//  UIImageView+test.m
//  函数响应式编程
//
//  Created by 袁昊 on 2017/10/25.
//  Copyright © 2017年 袁昊. All rights reserved.
//

#import "UIImageView+test.h"
#import <objc/message.h>


@implementation UIImageView (test)

-(void)dealloc{
    NSLog(@"dealloc test categary!");
    
}


-(Block)block{
    return objc_getAssociatedObject(self , @"block");

}

- (void)setBlock:(Block)block{
    
    objc_setAssociatedObject(self, @"block", block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UIImageView*(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height)) YH_Rect{
//    creactmak
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (UIImageView*(^)(UIView* v))YHadd{
    return ^(UIView* v){
        [v addSubview:self];
        return self;
    };
}

- (void)YHBlock:(void(^)(UIImageView* img)) block2{
    self.image = [UIImage imageNamed:@"2.jpg"];
    block2(self);
}



@end
