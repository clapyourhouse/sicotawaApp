//
//  ViewController.h
//  sicotawaAppCamera
//
//  Created by KitamuraShogo on 13/07/27.
//  Copyright (c) 2013年 KitamuraShogo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>{
    UISlider *slider;
    UIImageView * v;
}
- (IBAction)showImagePicker:(id)sender;
- (IBAction)sliderValue:(id)sender;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UISlider *slider;

@end
