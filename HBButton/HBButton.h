//
//  HBButton.h
//  HBButtonDemo
//
//  Created by 季怀斌 on 2018/3/30.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HBButton : UIButton
@property (nonatomic,assign) CGRect titleRect;
@property (nonatomic,assign) CGRect imageRect;
@property (nonatomic, copy) NSString *alertStr;
@property (nonatomic, strong) UIColor *alertStrColor;
@property (nonatomic, strong) UIFont *alertStrFont;
@property (nonatomic, assign) CGFloat alertCornerRadius;
@property (nonatomic, assign) BOOL isAlertPoint;
@end
