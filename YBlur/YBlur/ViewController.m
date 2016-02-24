//
//  ViewController.m
//  YBlur
//
//  Created by YangJingchao on 16/2/24.
//  Copyright © 2016年 YangJingchao. All rights reserved.
//

#import "ViewController.h"
#import "ImageEffects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _bgImageLayer = [CALayer layer];
    _bgImageLayer.backgroundColor = [UIColor whiteColor].CGColor;
    _bgImageLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:_bgImageLayer];
    
    UIImageView *imgv =[[UIImageView alloc]initWithFrame:self.view.bounds];
    imgv.image = [UIImage imageNamed:@"IMG_2877.JPG"];
    UIImage *img = [imgv.image blurredImageWithSize:CGSizeMake(100, 200)];
    [CATransaction begin];
    [CATransaction setAnimationDuration:1];
    _bgImageLayer.contents = (id)img.CGImage;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
