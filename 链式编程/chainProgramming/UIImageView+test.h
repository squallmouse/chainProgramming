//
//  UIImageView+test.h
//  函数响应式编程
//
//  Created by 袁昊 on 2017/10/25.
//  Copyright © 2017年 袁昊. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^Block)(UIImageView* img);


@interface UIImageView (test)

@property (nonatomic,copy)Block block;

- (UIImageView*(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height)) YH_Rect;
- (UIImageView*(^)(UIView* v))YHadd;
- (void)YHBlock:(void(^)(UIImageView* img)) block;
@end
