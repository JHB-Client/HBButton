//
//  ViewController.m
//  HBButtonDemo
//
//  Created by 季怀斌 on 2018/3/30.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "ViewController.h"
#import "HBButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HBButton *btn = [[HBButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //    btn.backgroundColor = [UIColor redColor];
    btn.isAlertPoint = true;
    [btn setTitle:@"本组住院病人\n200人" forState:UIControlStateNormal];
    btn.titleLabel.numberOfLines = 0;
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"1.png"] forState:UIControlStateNormal];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    //
    CGFloat imageW = 50;
    CGFloat imageH = 50;
    CGFloat imageX = 25;
    CGFloat imageY = 10;
    btn.imageRect = CGRectMake(imageX, imageY, imageW, imageH);
    //
    CGFloat titleW = 100;
    CGFloat titleH = 40;
    CGFloat titleX = 0;
    CGFloat titleY = 60;
    btn.titleRect = CGRectMake(titleX, titleY, titleW, titleH);
    //
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)btnClick:(UIButton *)btn {
    NSLog(@"---------btnClick----------");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
