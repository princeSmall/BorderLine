//
//  UIView+BorderLine.h
//  BorderLine
//
//  Created by le tong on 2019/2/19.
//  Copyright © 2019 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_OPTIONS(NSUInteger, UIViewBorderLine) {
    UIViewBorderLineTop         = 1 << 0,
    UIViewBorderLineLeft        = 1 << 1,
    UIViewBorderLineBottom      = 1 << 2,
    UIViewBorderLineRight       = 1 << 3,
    UIViewBorderLineAllLines    = ~0UL
};

@interface UIView (BorderLine)

/**
 基于加subView的方式在指定的边加边框
 
 @param width 边线宽度
 @param color 边线颜色
 @param borderLines 指定的边
 */
- (void)addBorderLine:(CGFloat)width color:(UIColor *)color borderLines:(UIViewBorderLine)borderLines;


NS_ASSUME_NONNULL_END

@end
