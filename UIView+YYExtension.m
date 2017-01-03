//
//  UIView+YYExtension.m
//  QiuMei
//
//  Created by winona-user on 16/10/21.
//  Copyright © 2016年 winona-user. All rights reserved.
//

#import "UIView+YYExtension.h"

@implementation UIView (YYExtension)

- (void)setYY_x:(CGFloat)YY_x{
    CGRect frame = self.frame;
    frame.origin.x = YY_x;
    self.frame = frame;
}

- (void)setYY_y:(CGFloat)YY_y{
    CGRect frame = self.frame;
    frame.origin.y = YY_y;
    self.frame = frame;
}

- (void)setYY_width:(CGFloat)YY_width{
    CGRect frame = self.frame;
    frame.size.width = YY_width;
    self.frame = frame;
}

- (void)setYY_height:(CGFloat)YY_height{
    CGRect frame = self.frame;
    frame.size.height = YY_height;
    self.frame = frame;
}

- (CGFloat)YY_x{
    return self.frame.origin.x;
}

- (CGFloat)YY_y{
    return self.frame.origin.y;
}

- (CGFloat)YY_width{
    return self.frame.size.width;
}

- (CGFloat)YY_height{
    return self.frame.size.height;
}

- (CGFloat)YY_centerX{
    return self.center.x;
}
- (void)setYY_centerX:(CGFloat)YY_centerX{
    CGPoint center = self.center;
    center.x = YY_centerX;
    self.center = center;
}

- (CGFloat)YY_centerY{
    return self.center.y;
}
- (void)setYY_centerY:(CGFloat)YY_centerY{
    CGPoint center = self.center;
    center.y = YY_centerY;
    self.center = center;
}

- (void)setYY_size:(CGSize)YY_size{
    CGRect frame = self.frame;
    frame.size = YY_size;
    self.frame = frame;
}
- (CGSize)YY_size{
    return self.frame.size;
}


- (CGFloat)YY_right{
    //    return self.YY_x + self.YY_width;
    return CGRectGetMaxX(self.frame);
}
- (CGFloat)YY_bottom{
    //    return self.YY_y + self.YY_height;
    return CGRectGetMaxY(self.frame);
}

- (void)setYY_right:(CGFloat)YY_right{
    self.YY_x = YY_right - self.YY_width;
}
- (void)setYY_bottom:(CGFloat)YY_bottom{
    self.YY_y = YY_bottom - self.YY_height;
}

+ (instancetype)YY_viewFromXib {
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

// Move via offset
- (void) moveBy: (CGPoint) delta
{
    CGPoint newcenter = self.center;
    newcenter.x += delta.x;
    newcenter.y += delta.y;
    self.center = newcenter;
}

// Scaling
- (void) scaleBy: (CGFloat) scaleFactor
{
    CGRect newframe = self.frame;
    newframe.size.width *= scaleFactor;
    newframe.size.height *= scaleFactor;
    self.frame = newframe;
}

// Ensure that both dimensions fit within the given size by scaling down
- (void) fitInSize: (CGSize) aSize
{
    CGFloat scale;
    CGRect newframe = self.frame;
    
    if (newframe.size.height && (newframe.size.height > aSize.height))
    {
        scale = aSize.height / newframe.size.height;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    if (newframe.size.width && (newframe.size.width >= aSize.width))
    {
        scale = aSize.width / newframe.size.width;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    self.frame = newframe;	
}


@end
