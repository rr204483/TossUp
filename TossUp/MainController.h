//
//  ViewController.h
//  TossUp
//
//  Created by Ramesh on 29/08/2013.
//  Copyright (c) 2013 Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainController : UIViewController

@property(strong, nonatomic) NSString *countryPrefix;
@property(strong, nonatomic) UIButton *resultImgBtn;
@property(strong, nonatomic) NSString *coinToss;

@property(strong, nonatomic) UIImageView *resultImgView;
@property(strong, nonatomic) UIImageView *resultTxtImgView;
@property(strong, nonatomic) NSArray *inImgArray;
@property(strong, nonatomic) NSArray *ukImgArray;
@property(strong, nonatomic) NSArray *usImgArray;


@end
