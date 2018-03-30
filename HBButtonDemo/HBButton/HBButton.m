//
//  HBButton.m
//  HBButtonDemo
//
//  Created by 季怀斌 on 2018/3/30.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "HBButton.h"
#import "UIView+Extension.h"
#define kP(px) (CGFloat)(px * 0.5 * CGRectGetWidth([[UIScreen mainScreen] bounds]) / 375)
NS_ASSUME_NONNULL_BEGIN
@interface HBButton ()
@property (nonatomic, weak) UILabel *alertLabel;
@end
NS_ASSUME_NONNULL_END
@implementation HBButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpSubViews];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)setUpSubViews {
    UILabel *alertLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    [self addSubview:alertLabel];
    self.alertLabel = alertLabel;
}

- (void)setAlertStr:(NSString *)alertStr {
    _alertStr = alertStr;
}

- (void)setAlertStrColor:(UIColor *)alertStrColor {
    _alertStrColor = alertStrColor;
    [self setNeedsLayout];
}

- (void)setAlertStrFont:(UIFont *)alertStrFont {
    _alertStrFont = alertStrFont;
    [self setNeedsLayout];
}

- (void)setAlertCornerRadius:(CGFloat)alertCornerRadius {
    _alertCornerRadius = alertCornerRadius;
    [self setNeedsLayout];
}

- (void)setIsAlertPoint:(BOOL)isAlertPoint {
    _isAlertPoint = isAlertPoint;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    //
    if (!_isAlertPoint) {
        [self.alertLabel removeFromSuperview];
    } else {
        
        if (self.alertStr) {
            self.alertLabel.text = self.alertStr;
            self.alertLabel.font = self.alertStrFont ? : [UIFont systemFontOfSize:kP(24)];
            self.alertLabel.textColor = self.alertStrColor ? : [UIColor whiteColor];
            [self.alertLabel sizeToFit];
            self.alertLabel.x = self.imageView.right - kP(10);
            self.alertLabel.y = self.imageView.y - self.alertLabel.height * 0.5;
        } else {
            self.alertLabel.x = self.imageView.right - kP(15);
            self.alertLabel.y = self.imageView.y - kP(15);
            self.alertLabel.width = kP(30);
            self.alertLabel.height = kP(30);
            
        }
        
        //
        self.alertLabel.layer.cornerRadius = self.alertCornerRadius ? : kP(15);
        self.alertLabel.clipsToBounds = true;
        self.alertLabel.backgroundColor = [UIColor redColor];
    }
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    if (!CGRectIsEmpty(self.titleRect) && !CGRectEqualToRect(self.titleRect, CGRectZero)) {
        return self.titleRect;
    }
    return [super titleRectForContentRect:contentRect];
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    if (!CGRectIsEmpty(self.imageRect) && !CGRectEqualToRect(self.imageRect, CGRectZero)) {
        return self.imageRect;
    }
    return [super imageRectForContentRect:contentRect];
}

@end
