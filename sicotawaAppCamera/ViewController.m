//
//  ViewController.m
//  sicotawaAppCamera
//
//  Created by KitamuraShogo on 13/07/27.
//  Copyright (c) 2013年 KitamuraShogo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];

    UIImage *im = [UIImage imageNamed:@"大泉洋.jpg"];
    v = [[UIImageView alloc]initWithImage:im];
    v.frame = CGRectMake(0, 0, 200, 200);
//ははっはっはっはっは
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showImagePicker:(id)sender {
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc]init];
        picker.sourceType = sourceType;
        picker.delegate = self;
        [self presentViewController:picker animated:YES completion:nil];
    }
    
}

- (IBAction)sliderValue:(id)sender {
    
    _slider.minimumValue = 0.0;
    _slider.maximumValue = 1.0;
    float g;
    g = _slider.value;
    v.alpha = g;
      
    NSLog(@"%f",_slider.value);
    [self.view addSubview:v];

}
//撮影した画像を画面に表示して、写真アルバムに保存する。
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //撮影したものをdictionaryで表示させている。
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [self dismissViewControllerAnimated:YES completion:^{
        self.imageView.image = image;
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    }];
    
}

- (void)dealloc {
    [_imageView release];
    [_slider release];
    [super dealloc];
}
@end
