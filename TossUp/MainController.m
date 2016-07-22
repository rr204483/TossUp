//
//  ViewController.m
//  TossUp
//
//  Created by Ramesh on 29/08/2013.
//  Copyright (c) 2013 Ramesh. All rights reserved.
//

#import "MainController.h"
#define inImgTag 10
#define ukImgTag 20
#define usImgTag 30

#define inCurrencyTag 40
#define ukCurrencyTag 50
#define usCurrencyTag 60



@interface MainController ()

@end

@implementation MainController


@synthesize countryPrefix;
@synthesize resultImgBtn;
@synthesize coinToss;
@synthesize resultImgView;
@synthesize resultTxtImgView;
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    [self setTitle:@"Heads or Tails"];
    [self loadControlls];
	[self becomeFirstResponder];
}

-(void) loadControlls {
    
    //images - IN
    UIButton *inBtnImage =[self createImgButton:10 Top:10 Width:80 Height:80 Tag:inImgTag
                                       Color:[UIColor clearColor]
                                        Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"in" Align:1 bgColor:[UIColor clearColor]];
    [inBtnImage setBackgroundImage:[UIImage imageNamed:@"inEnable.png"]
                             forState:UIControlStateNormal];
    [inBtnImage addTarget:self action:@selector(buttonTouchDown:)
            forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:inBtnImage];
    
    
    UIButton *inCurrencyImage =[self createButton:40 Top:95 Width:18 Height:26 Tag:inCurrencyTag
                                             Color:[UIColor clearColor]
                                              Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"in" Align:6 bgColor:[UIColor clearColor]];
    [inCurrencyImage setBackgroundImage:[UIImage imageNamed:@"inCurrency.png"]
                               forState:UIControlStateNormal];
    [self.view addSubview:inCurrencyImage];

    
      //images - UK
    UIButton *ukBtnImage =[self createImgButton:120 Top:10 Width:80 Height:80 Tag:ukImgTag
                                       Color:[UIColor clearColor]
                                        Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"uk" Align:1 bgColor:[UIColor clearColor]];
    [ukBtnImage setBackgroundImage: [UIImage imageNamed:@"ukEnable.png"]
                          forState:UIControlStateNormal];
    [self.view addSubview:ukBtnImage];
    
    UIButton *ukCurrencyImage =[self createButton:150 Top:95 Width:18 Height:26 Tag:ukCurrencyTag
                                               Color:[UIColor clearColor]
                                                Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"uk" Align:6 bgColor:[UIColor clearColor]];
    
    [ukCurrencyImage setBackgroundImage:[UIImage imageNamed:@"ukCurrency.png"]
                               forState:UIControlStateNormal];
    
    [self.view addSubview:ukCurrencyImage];

    
      //images - US
    UIButton *usBtnImage =[self createImgButton:230 Top:10 Width:80 Height:80 Tag:usImgTag
                                    Color:[UIColor clearColor]
                                     Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"us" Align:1 bgColor:[UIColor clearColor]];
    
    [usBtnImage setBackgroundImage: [UIImage imageNamed:@"usEnable.png"]
                          forState:UIControlStateNormal];
    [self.view addSubview:usBtnImage];
    
    UIButton *usCurrencyImage =[self createButton:260 Top:95 Width:18 Height:26 Tag:usCurrencyTag
                                               Color:[UIColor clearColor]
                                                Font:[UIFont fontWithName:@"Arial-BoldMT" size:20] Text:@"us" Align:6 bgColor:[UIColor clearColor]];
    
    [usCurrencyImage setBackgroundImage:[UIImage imageNamed:@"usCurrency.png"]
                               forState:UIControlStateNormal];
    
    [self.view addSubview:usCurrencyImage];
    
    self.resultTxtImgView = [[[UIImageView alloc] initWithFrame:CGRectMake(100, 310, 120, 40)] autorelease];
    
    [self.view addSubview:resultTxtImgView] ;
    
    
    
    //Animation
    
    
    self.inImgArray = [[ [NSArray alloc] initWithObjects:
                       [UIImage imageNamed:@"inHeads.png"],
                       [UIImage imageNamed:@"inAni1.png"],
                       [UIImage imageNamed:@"inAni2.png"],
                       [UIImage imageNamed:@"inAni3.png"],
                       [UIImage imageNamed:@"inAni4.png"],
                       [UIImage imageNamed:@"inAni5.png"],
                       [UIImage imageNamed:@"inAni6.png"],
                       [UIImage imageNamed:@"inAni7.png"],
                       [UIImage imageNamed:@"inAni8.png"],
                       [UIImage imageNamed:@"inAni9.png"],
                       [UIImage imageNamed:@"inAni10.png"],
                       [UIImage imageNamed:@"inAni11.png"],
                       [UIImage imageNamed:@"inAni12.png"],
                       [UIImage imageNamed:@"inAni13.png"],
                       [UIImage imageNamed:@"inAni14.png"],
                       [UIImage imageNamed:@"inAni15.png"],
                       [UIImage imageNamed:@"inAni16.png"],
                       [UIImage imageNamed:@"inAni17.png"],
                       [UIImage imageNamed:@"inAni18.png"],
                       [UIImage imageNamed:@"inAni19.png"],
                       [UIImage imageNamed:@"inAni20.png"],
                       [UIImage imageNamed:@"inTails.png"],
                           nil]autorelease];
    
    
    self.ukImgArray= [[ [NSArray alloc] initWithObjects:
                      [UIImage imageNamed:@"ukAni1.png"],
                      [UIImage imageNamed:@"ukAni2.png"],
                      [UIImage imageNamed:@"ukAni3.png"],
                      [UIImage imageNamed:@"ukAni4.png"],
                      [UIImage imageNamed:@"ukAni5.png"],
                      [UIImage imageNamed:@"ukAni6.png"],
                      [UIImage imageNamed:@"ukAni7.png"],
                      [UIImage imageNamed:@"ukAni8.png"],
                      [UIImage imageNamed:@"ukAni9.png"],
                      [UIImage imageNamed:@"ukTails.png"],
                      [UIImage imageNamed:@"ukAni11.png"],
                      [UIImage imageNamed:@"ukAni12.png"],
                      [UIImage imageNamed:@"ukAni13.png"],
                      [UIImage imageNamed:@"ukAni14.png"],
                      [UIImage imageNamed:@"ukAni15.png"],
                      [UIImage imageNamed:@"ukAni16.png"],
                      [UIImage imageNamed:@"ukAni17.png"],
                      [UIImage imageNamed:@"ukAni18.png"],
                      [UIImage imageNamed:@"ukAni19.png"],
                      [UIImage imageNamed:@"ukHeads.png"],
                      nil] autorelease];


    
    self.usImgArray = [[ [NSArray alloc] initWithObjects:
                       [UIImage imageNamed:@"usAni1.png"],
                       [UIImage imageNamed:@"usAni2.png"],
                       [UIImage imageNamed:@"usAni3.png"],
                       [UIImage imageNamed:@"usAni4.png"],
                       [UIImage imageNamed:@"usAni5.png"],
                       [UIImage imageNamed:@"usAni6.png"],
                       [UIImage imageNamed:@"usAni7.png"],
                       [UIImage imageNamed:@"usAni8.png"],
                       [UIImage imageNamed:@"usAni9.png"],
                       [UIImage imageNamed:@"usTails.png"],
                       [UIImage imageNamed:@"usAni11.png"],
                       [UIImage imageNamed:@"usAni12.png"],
                       [UIImage imageNamed:@"usAni13.png"],
                       [UIImage imageNamed:@"usAni14.png"],
                       [UIImage imageNamed:@"usAni15.png"],
                       [UIImage imageNamed:@"usAni16.png"],
                       [UIImage imageNamed:@"usAni17.png"],
                       [UIImage imageNamed:@"usAni18.png"],
                       [UIImage imageNamed:@"usHeads.png"],
                        nil] autorelease];

    resultImgView = [[[UIImageView alloc] initWithFrame:
                             CGRectMake(50,120,155,155)] autorelease];
	resultImgView.animationDuration = -10;
	resultImgView.contentMode = UIViewContentModeBottomLeft;
    
    [self.view addSubview:resultImgView];
    
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    singleTap.numberOfTapsRequired = 1;
    resultImgView.userInteractionEnabled = YES;
    [resultImgView addGestureRecognizer:singleTap];
    [singleTap release];
    
    //initialize with random coins
    int randomEnable = (NSInteger)(arc4random_uniform(3));
    switch (randomEnable) {
        case 0:
            [self buttonTouchDown:inBtnImage];
            break;
        case 1:
            [self buttonTouchDown:ukBtnImage];
            break;
        case 2:
            [self buttonTouchDown:usBtnImage];
            break;
    }
        
}

-(void) buttonTouchDown:(id) sender {

    
    UIButton *inBtn = (UIButton *) [self.view viewWithTag:inImgTag];
    UIButton *ukBtn = (UIButton *) [self.view viewWithTag:ukImgTag];
    UIButton *usBtn = (UIButton *) [self.view viewWithTag:usImgTag];
    
    UIButton *inCurrencyBtn = (UIButton *) [self.view viewWithTag:inCurrencyTag];
    UIButton *ukCurrencyBtn = (UIButton *) [self.view viewWithTag:ukCurrencyTag];
    UIButton *usCurrencyBtn = (UIButton *) [self.view viewWithTag:usCurrencyTag];

    UIButton *selectedBtn = (UIButton *) sender;
    
    //setting country prefix(like "in", "us" and "uk") which is used throughout
    self.countryPrefix=selectedBtn.titleLabel.text;
    
    [self.resultTxtImgView setImage:nil];
    resultImgView.frame= CGRectMake(50,160,230,120);

    switch (selectedBtn.tag) {
            
        case inImgTag:
            
           [selectedBtn setBackgroundImage:[UIImage imageNamed:@"inEnable.png"] forState:UIControlStateNormal];
            [inCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"inCurrency.png"] forState:UIControlStateNormal];

            
            [ukBtn setBackgroundImage:[UIImage imageNamed:@"ukDisable.png"] forState:UIControlStateNormal];
            [ukCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"ukCurrencyDisable.png"] forState:UIControlStateNormal];

            [usBtn setBackgroundImage:[UIImage imageNamed:@"usDisable.png"] forState:UIControlStateNormal];
            [usCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"usCurrencyDisable.png"] forState:UIControlStateNormal];
            
            [resultImgView setAnimationImages:self.inImgArray];
            [resultImgView setImage:[UIImage imageNamed:@"inHeadsOrTails.png"]];
            break;
        case ukImgTag:
            [selectedBtn setBackgroundImage:[UIImage imageNamed:@"ukEnable.png"] forState:UIControlStateNormal];
            [ukCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"ukCurrency.png"] forState:UIControlStateNormal];


            [inBtn setBackgroundImage:[UIImage imageNamed:@"inDisable.png"] forState:UIControlStateNormal];
            [inCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"inCurrencyDisable.png"] forState:UIControlStateNormal];

            [usBtn setBackgroundImage:[UIImage imageNamed:@"usDisable.png"] forState:UIControlStateNormal];
            [usCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"usCurrencyDisable.png"] forState:UIControlStateNormal];

            [resultImgView setAnimationImages:self.ukImgArray];
            [resultImgView setImage:[UIImage imageNamed:@"ukHeadsOrTails.png"]];
            break;
            
        case usImgTag:
            [selectedBtn setBackgroundImage:[UIImage imageNamed:@"usEnable.png"] forState:UIControlStateNormal];
            [usCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"usCurrency.png"] forState:UIControlStateNormal];

            
            [inBtn setBackgroundImage:[UIImage imageNamed:@"inDisable.png"] forState:UIControlStateNormal];
            [inCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"inCurrencyDisable.png"] forState:UIControlStateNormal];

            [ukBtn setBackgroundImage:[UIImage imageNamed:@"ukDisable.png"] forState:UIControlStateNormal];
            [ukCurrencyBtn setBackgroundImage:[UIImage imageNamed:@"ukCurrencyDisable.png"] forState:UIControlStateNormal];

            [resultImgView setAnimationImages:self.usImgArray];
            [resultImgView setImage:[UIImage imageNamed:@"usHeadsOrTails.png"]];
            break;

    }
}

-(void) flipCoin:(id) sender {
    
    if ( [self.countryPrefix length] == 0 ) {
        [self displayAlert:@"No coins selected" Message:@"Select the coin by tapping an image"];
        return;
    }
    //clear the img
    [self.resultTxtImgView setImage:nil];
    
    [resultImgView setFrame:CGRectMake(80,140,155,155)];
    [resultImgView startAnimating];
    
    // to disable user interaction with an img while animating
    //resultImgView.userInteractionEnabled = NO;
    [self enableUserInteractionOnImg:NO];

    int randomNumber = (NSInteger)(arc4random_uniform(2));
    NSString *tossImgName;
    
    //1 --> heads, 0 --> tails
    
    if (randomNumber)
        tossImgName=@"Heads.png";
    else
        tossImgName=@"Tails.png";
    
    //delaying it 4 seconds, it can be implemented using selectors like below
    [self performSelector:@selector(displayResult:)  withObject:tossImgName afterDelay:2];

}

-(void) displayResult:(NSString *) tossImgName {
    
    NSString *nameForResultImg=[NSString stringWithFormat:@"%@%@", self.countryPrefix,tossImgName];
    
    //animating the image button
    [resultImgView stopAnimating];
    [resultImgView setFrame:CGRectMake(80,140,155,155)];
    [resultImgView setImage:[UIImage imageNamed:nameForResultImg]];
    
    //[self.resultTxtImgView setFrame:CGRectMake(100, 320, 120, 40)];
    [self.resultTxtImgView setImage:[UIImage imageNamed:tossImgName]];
    
    //to enable user interaction with an img after animating
    //resultImgView.userInteractionEnabled = YES;
    [self enableUserInteractionOnImg:YES];
    
}

-(void) enableUserInteractionOnImg:(BOOL) enable {
    
    UIButton *inBtn = (UIButton *) [self.view viewWithTag:inImgTag];
    UIButton *ukBtn = (UIButton *) [self.view viewWithTag:ukImgTag];
    UIButton *usBtn = (UIButton *) [self.view viewWithTag:usImgTag];
    
    if (enable) {
        inBtn.userInteractionEnabled=YES;
        ukBtn.userInteractionEnabled=YES;
        usBtn.userInteractionEnabled=YES;
        
        resultImgView.userInteractionEnabled = YES;
    } else {
        
        inBtn.userInteractionEnabled=NO;
        ukBtn.userInteractionEnabled=NO;
        usBtn.userInteractionEnabled=NO;
        
        resultImgView.userInteractionEnabled = NO;

        
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UILabel *) createLabel:(float)left Top:(float)top Width:(float)width Height:(float)height Tag:(int) tag
                   Color:(UIColor *) color Font:(UIFont *) font Text:(NSString *) text Align:(NSTextAlignment) align {
    
    UILabel *tmpLabel = [[UILabel alloc] initWithFrame:CGRectMake(left, top, width, height)];
    [tmpLabel setTag:tag];
    [tmpLabel setBackgroundColor:[UIColor clearColor]];
    [tmpLabel setTextColor:color];
    [tmpLabel setFont:font];
    [tmpLabel setTextAlignment:align];
    [tmpLabel setText:text];
    return [tmpLabel autorelease];
    
}


-(UITextField *) createText:(float)left Top:(float)top Width:(float)width Height:(float)height Tag:(int) tag
                      Color:(UIColor *) color Font:(UIFont *) font BorderStyle:(UITextBorderStyle) borderStyle Align:(NSTextAlignment) align Keyboard:(UIKeyboardType) keyBoardType ReturnKeyType:(UIKeyboardType) keyBoardReturn {
    
    UITextField *tmpTxt = [[UITextField alloc] initWithFrame:CGRectMake(left, top, width, height)];
    [tmpTxt setTag:tag];
    [tmpTxt setFont:font];
    [tmpTxt setTextAlignment:align];
    [tmpTxt setBackgroundColor:color];
    [tmpTxt setBorderStyle:borderStyle];
    [tmpTxt setKeyboardType:keyBoardType];
    [tmpTxt setReturnKeyType:keyBoardReturn];
    
    return [tmpTxt autorelease];
    
}


//without action - used for currency img
-(UIButton *) createButton:(float)left Top:(float)top Width:(float)width Height:(float)height Tag:(int) tag
Color:(UIColor *) color Font:(UIFont *) font Text:(NSString *) text Align:(NSTextAlignment) align bgColor:(UIColor *) bgColor{
    
    UIButton *tmpBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tmpBtn.frame=CGRectMake(left,top,width,height);
    [tmpBtn setTitleColor:color forState:UIControlStateNormal];
    [tmpBtn setTitle:text forState:UIControlStateNormal];
    tmpBtn.titleLabel.font= font;
    [tmpBtn setTag:tag];
    [tmpBtn setBackgroundColor:bgColor];
    return tmpBtn;
    
}

//with action
-(UIButton *) createImgButton:(float)left Top:(float)top Width:(float)width Height:(float)height Tag:(int) tag
                     Color:(UIColor *) color Font:(UIFont *) font Text:(NSString *) text Align:(NSTextAlignment) align bgColor:(UIColor *) bgColor{
    
    UIButton *tmpBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tmpBtn.frame=CGRectMake(left,top,width,height);
    [tmpBtn setTitleColor:color forState:UIControlStateNormal];
    [tmpBtn setTitle:text forState:UIControlStateNormal];
    tmpBtn.titleLabel.font= font;
    [tmpBtn setTag:tag];
    [tmpBtn setBackgroundColor:bgColor];
     
    [tmpBtn addTarget:self
               action:@selector(buttonTouchDown:)
     forControlEvents:UIControlEventTouchDown];

    return tmpBtn;
    
}

-(void) displayAlert:(NSString *)title Message:(NSString *)message {
    
    UIAlertView *tmpAlert = [[UIAlertView alloc]
                             initWithTitle:title
                             message:message
                             delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles:@"Ok", nil];
    
    [tmpAlert show];
    [tmpAlert autorelease];
    
}

-(void) tapDetected {
    [self flipCoin:nil];
}

-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self flipCoin:nil];
    }
}

-(BOOL) canBecomeFirstResponder {
    return YES;
}

-(void) dealloc {
    [super dealloc];
}

@end
