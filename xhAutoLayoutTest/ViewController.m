//
//  ViewController.m
//  xhAutoLayoutTest
//
//  Created by Xiaohe Hu on 10/22/13.
//  Copyright (c) 2013 Xiaohe Hu. All rights reserved.
//

#import "ViewController.h"

static float kMasterAngle = 23.5;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *uiv_bigContainer;

@property (weak, nonatomic) IBOutlet UIButton *uib_0;
@property (weak, nonatomic) IBOutlet UIButton *uib_4;
@property (weak, nonatomic) IBOutlet UIButton *uib_3;
@property (weak, nonatomic) IBOutlet UIButton *uib_2;
@property (weak, nonatomic) IBOutlet UIButton *uib_1;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_Y;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_X;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view1_H_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view1_W_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *view2_H_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bigContainer_H;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_uiiv_1_X;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_uiiv_1_Y;

@property (weak, nonatomic) IBOutlet UIView *uiv_0;
@property (weak, nonatomic) IBOutlet UIView *uiv_4;
@property (weak, nonatomic) IBOutlet UIView *uiv_3;
@property (weak, nonatomic) IBOutlet UIView *uiv_1;
@property (weak, nonatomic) IBOutlet UIView *uiv_2;

@property (weak, nonatomic) IBOutlet UIImageView *uiiv_2;
@property (weak, nonatomic) IBOutlet UIImageView *uiiv_1;


@end
#define RADIANS_TO_DEGREES(radians) ((radians) * ( M_PI/180))
@implementation ViewController


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)])
    {
        [self prefersStatusBarHidden];
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    }
    else
    {
        // iOS 6
        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    }
    
    _uiv_bigContainer.tag = 10;
    _uiv_0.tag = 101;
    _uiv_1.tag = 102;
    _uiv_2.tag = 103;
    _uiv_4.tag = 104;
    _uiv_3.tag = 105;

	// Do any additional setup after loading the view, typically from a nib.
    
    _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
    
    [_uiv_bigContainer setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:0.0/255.0 alpha:1.0]];
    [_uiv_4 setBackgroundColor:[UIColor colorWithRed:253.0/255.0 green:228.0/255.0 blue:110.0/255.0 alpha:1.0]];
    [_uiv_3 setBackgroundColor:[UIColor colorWithRed:235.0/255.0 green:189.0/255.0 blue:7.0/255.0 alpha:1.0]];
    
    _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
    
    [_uiv_1 removeConstraint:_constraint_uiiv_1_X];
    [_uiv_1 removeConstraint:_constraint_uiiv_1_Y];
    _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(kMasterAngle));
    _uiiv_1.frame = CGRectMake(-270.0f, 150.0f, 1024.0f, 768.0f);

    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
}

#pragma mark - Topleft Part
- (IBAction)btn0Tapped:(id)sender {

        [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                             _uiv_bigContainer.frame = CGRectMake(0.0f, 0.0f, 2068, 1556);
                             
                             for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 if (tmp.tag == 101) {
                                     
                                 }
                                 else{
                                     tmp.alpha = 0.0;
                                 }
                             }
                             //[self.view layoutIfNeeded];
                         } completion:^(BOOL finished)
                        {
                            [_uib_0 removeTarget:self action:@selector(btn0Tapped:) forControlEvents:UIControlEventAllTouchEvents];
                            [_uib_0 addTarget:self action:@selector(reverseView0:) forControlEvents:UIControlEventTouchDown];
                        }
         ];

    
}

-(IBAction)reverseView0:(id)sender{
    
    [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                             
                             for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 if (tmp.tag == 101) {
                                     
                                 }
                                 else{
                                     tmp.alpha = 1.0;
                                 }
                             }
                             //[self.view layoutIfNeeded];
                         } completion:^(BOOL finished)
                            {
                                [_uib_0 removeTarget:self action:@selector(reverseView0:) forControlEvents:UIControlEventAllTouchEvents];
                                [_uib_0 addTarget:self action:@selector(btn0Tapped:) forControlEvents:UIControlEventTouchDown];
                            }
         ];
}

#pragma mark - Bottomleft Part
- (IBAction)btn4Tapped:(id)sender {
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(0.0f, -788.0f, 2068, 1556);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 104) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_4 removeTarget:self action:@selector(btn4Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_4 addTarget:self action:@selector(reverseView4:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}
-(IBAction)reverseView4:(id)sender{

    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 104) {
                                 
                             }
                             else{
                                 tmp.alpha = 1.0;
                             }
                         }
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_4 removeTarget:self action:@selector(reverseView4:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_4 addTarget:self action:@selector(btn4Tapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

#pragma mark - BottomRight Part
- (IBAction)btn3Tapped:(id)sender {
    
    [UIView animateWithDuration:1.33
                     animations:^{
                        _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-844.0f, -788.0f, 2068, 1556);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 105) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_3 removeTarget:self action:@selector(btn3Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_3 addTarget:self action:@selector(reverseView3:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}
-(IBAction)reverseView3:(id)sender{
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 105) {
                                 
                             }
                             else{
                                 tmp.alpha = 1.0;
                             }
                         }
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_3 removeTarget:self action:@selector(reverseView3:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_3 addTarget:self action:@selector(btn3Tapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

#pragma mark - TopRight part 1

- (IBAction)btn1Tapped:(id)sender {
    
    [_uiv_1 removeConstraint:_constraint_uiiv_1_X];
    [_uiv_1 removeConstraint:_constraint_uiiv_1_Y];
    
    _view1_H_Constant.constant = 768;
    //_bigContainer_H.constant = 1753;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1044.0f, 0.0f, 2068, 1556);
                         _uiiv_1.frame = CGRectMake(0.0f, 0.0f, 1024.0f, 768.0f);
                         [self.view layoutIfNeeded];
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 102) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                     } completion:^(BOOL finished)
     {
         [_uib_1 removeTarget:self action:@selector(btn1Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_1 addTarget:self action:@selector(reverseView1:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

-(IBAction)reverseView1:(id)sender{
    
    _view1_H_Constant.constant = 571;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         
                         _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
                         _uiiv_1.frame = CGRectMake(-270.0f, 150.0f, 1024.0f, 768.0f);
                         [self.view layoutIfNeeded];
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(kMasterAngle));
                        
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 102) {
                                 
                             }
                             else{
                                 tmp.alpha = 1.0;
                             }
                         }
                     } completion:^(BOOL finished)
     {
         [_uib_1 removeTarget:self action:@selector(reverseView1:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_1 addTarget:self action:@selector(btn1Tapped:) forControlEvents:UIControlEventTouchDown];

     }
     ];
}

#pragma mark - TopRight part 2

- (IBAction)btn2Tapped:(id)sender {
    
    _view2_H_Constant.constant = 768;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1044.0f, -591.0f, 2068, 1556);
                         [self.view layoutIfNeeded];
                         
                         _uiiv_2.frame = CGRectMake(0.0f, 0.0f, 1024.0f, 768.0f);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 103) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                     } completion:^(BOOL finished)
     {
         [_uib_2 removeTarget:self action:@selector(btn2Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_2 addTarget:self action:@selector(reverseView2:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}


-(IBAction)reverseView2:(id)sender{
    
    _view2_H_Constant.constant = 177;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-630.0f, -340.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         [self.view layoutIfNeeded];
                         
                         _uiiv_2.frame = CGRectMake(0.0f, -591.0f, 1024.0f, 768.0f);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 103) {
                                 
                             }
                             else{
                                 tmp.alpha = 1.0;
                             }
                         }
                     } completion:^(BOOL finished)
     {
         [_uib_2 removeTarget:self action:@selector(reverseView2:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_2 addTarget:self action:@selector(btn2Tapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
