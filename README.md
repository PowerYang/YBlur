# YBlur
用法
``` 
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
    ```
