//
//  UIView+YYExtension.h
//  QiuMei
//
//  Created by winona-user on 16/10/21.
//  Copyright © 2016年 winona-user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YYExtension)
@property (nonatomic ,assign) CGFloat YY_x;
@property (nonatomic ,assign) CGFloat YY_y;
@property (nonatomic ,assign) CGFloat YY_width;
@property (nonatomic ,assign) CGFloat YY_height;
@property (nonatomic ,assign) CGFloat YY_centerX;
@property (nonatomic ,assign) CGFloat YY_centerY;

@property (nonatomic ,assign) CGSize YY_size;

@property (nonatomic, assign) CGFloat YY_right;
@property (nonatomic, assign) CGFloat YY_bottom;

+ (instancetype)YY_viewFromXib;
/** 在分类中声明@property， 只会生成方法的声明， 不会生成方法的实现和带有_线成员变量 */

- (void) moveBy: (CGPoint) delta;
- (void) scaleBy: (CGFloat) scaleFactor;
- (void) fitInSize: (CGSize) aSize;

@end
