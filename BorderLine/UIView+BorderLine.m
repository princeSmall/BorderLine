//
//  UIView+BorderLine.m
//  BorderLine
//
//  Created by le tong on 2019/2/19.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "UIView+BorderLine.h"
#import "MasonryFile/Masonry.h"

@implementation UIView (BorderLine)
- (void)addBorderLine:(CGFloat)width color:(UIColor *)color borderLines:(UIViewBorderLine)borderLines {
    if (borderLines & UIViewBorderLineTop) {
        UIView *vTop = ({
            UIView *v = [UIView new];
            v.backgroundColor = color;
            v;
        });
        [self addSubview:vTop];
        [vTop mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(0);
            make.height.mas_equalTo(width);
        }];
    }
    if (borderLines & UIViewBorderLineLeft) {
        UIView *vLeft = ({
            UIView *v = [UIView new];
            v.backgroundColor = color;
            v;
        });
        [self addSubview:vLeft];
        [vLeft mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.bottom.mas_equalTo(0);
            make.width.mas_equalTo(width);
        }];
    }
    if (borderLines & UIViewBorderLineBottom) {
        UIView *vBottom = ({
            UIView *v = [UIView new];
            v.backgroundColor = color;
            v;
        });
        [self addSubview:vBottom];
        [vBottom mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.left.right.mas_equalTo(0);
            make.height.mas_equalTo(width);
        }];
    }
    if (borderLines & UIViewBorderLineRight) {
        UIView *vRight = ({
            UIView *v = [UIView new];
            v.backgroundColor = color;
            v;
        });
        [self addSubview:vRight];
        [vRight mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.right.bottom.mas_equalTo(0);
            make.width.mas_equalTo(width);
        }];
    }
}
@end
