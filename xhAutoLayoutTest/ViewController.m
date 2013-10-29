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

@property (weak, nonatomic) IBOutlet UILabel *uil_0View;
@property (weak, nonatomic) IBOutlet UILabel *uil_small0View;

@property (weak, nonatomic) IBOutlet UITextView *uitv_3ViewTitle;
@property (weak, nonatomic) IBOutlet UILabel *uil_small3View;

@property (weak, nonatomic) IBOutlet UILabel *uil_2View;
@property (weak, nonatomic) IBOutlet UILabel *uil_small2View;

@property (weak, nonatomic) IBOutlet UILabel *uil_1View;
@property (weak, nonatomic) IBOutlet UILabel *uil_small1View;

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
    _uiv_3.tag = 104;
    _uiv_4.tag = 105;

	// Do any additional setup after loading the view, typically from a nib.
    
    [_uiv_bigContainer setBackgroundColor:[UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:0.0/255.0 alpha:1.0]];
    [_uiv_4 setBackgroundColor:[UIColor colorWithRed:253.0/255.0 green:228.0/255.0 blue:110.0/255.0 alpha:1.0]];
    [_uiv_3 setBackgroundColor:[UIColor colorWithRed:235.0/255.0 green:189.0/255.0 blue:7.0/255.0 alpha:1.0]];
    
    _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
    
    [self VCinit];
    
    [_uiv_1 removeConstraint:_constraint_uiiv_1_X];
    [_uiv_1 removeConstraint:_constraint_uiiv_1_Y];
    _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(kMasterAngle));
    _uiiv_1.frame = CGRectMake(-200.0f, 100.0f, 1024.0f, 768.0f);

    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
}

-(void)VCinit
{
    [self addGesturesToViews];
}

#pragma mark - add gestures to views
-(void)addGesturesToViews
{
    for (UIView *tmpView in [_uiv_bigContainer subviews]) {
        UITapGestureRecognizer *tapOpenSection = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(checkViewToOpen:)];
        tapOpenSection.delegate = self;
        tmpView.userInteractionEnabled = YES;
        [tmpView addGestureRecognizer:tapOpenSection];
    }
}

-(void)checkViewToOpen:(UITapGestureRecognizer *)recognizer
{
    int tag = (int)recognizer.view.tag;
    switch (tag) {
        case 101:
            [self btn0Tapped:nil];
            break;
        case 102:
            [self btn1Tapped:nil];
            break;
        case 103:
            [self btn2Tapped:nil];
            break;
        case 104:
            [self btn3Tapped:nil];
            break;
        case 105:
            [self btn4Tapped:nil];
            break;
        default:
            break;
    }
}

#pragma mark - Topleft Part
- (IBAction)btn0Tapped:(id)sender {

        [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                             _uiv_bigContainer.frame = CGRectMake(0.0f, 0.0f, 2066, 1554);
                             _uil_small0View.alpha = 1.0;
                             _uil_0View.alpha = 0.0;
                             for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 if (tmp.tag == 101) {
                                     
                                 }
                                 else{
                                     tmp.alpha = 0.0;
                                 }
                             }
                         } completion:^(BOOL finished)
                        {
                            for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
                                [_uiv_0 removeGestureRecognizer:recognizer];
                            }
                            UITapGestureRecognizer *tapToReverse = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reverseView0:)];
                            tapToReverse.delegate = self;
                            _uil_small0View.userInteractionEnabled = YES;
                            [_uil_small0View addGestureRecognizer:tapToReverse];
                        }
         ];

    
}

-(IBAction)reverseView0:(id)sender{
    
    [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.frame = CGRectMake(-540.0f, -321.0f, 2068, 1556);
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                             _uil_small0View.alpha = 0.0;
                             _uil_0View.alpha = 1.0;
                             for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                     tmp.alpha = 1.0;
                             }
                         } completion:^(BOOL finished)
                            {
                                [self addGesturesToViews];
                            }
         ];
}

#pragma mark - Bottomleft Part
- (IBAction)btn4Tapped:(id)sender {
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(0.0f, -786.0f, 2066, 1554);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 105) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }

                     } completion:^(BOOL finished)
     {
         for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
             [_uiv_4 removeGestureRecognizer:recognizer];
         }
         UITapGestureRecognizer *tapToReverse = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reverseView0:)];
         tapToReverse.delegate = self;
         _uiv_4.userInteractionEnabled = YES;
         [_uiv_4 addGestureRecognizer:tapToReverse];
     }
     ];
}
-(IBAction)reverseView4:(id)sender{

    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-540.0f, -321.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 tmp.alpha = 1.0;
                         }
                         //[self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished)
                    {
                        [self addGesturesToViews];
                    }
     ];
}

#pragma mark - BottomRight Part
- (IBAction)btn3Tapped:(id)sender {
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-744.0f, -786.0f, 2066, 1554);
                         _uitv_3ViewTitle.alpha = 0.0;
                         _uil_small3View.alpha = 1.0;
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 104) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
                            [_uiv_3 removeGestureRecognizer:recognizer];
                        }
                        UITapGestureRecognizer *tapToReverse = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reverseView3:)];
                        tapToReverse.delegate = self;
                        _uil_small3View.userInteractionEnabled = YES;
                        [_uil_small3View addGestureRecognizer:tapToReverse];
                    }
     ];
}
-(IBAction)reverseView3:(id)sender{
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-540.0f, -321.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         _uitv_3ViewTitle.alpha = 1.0;
                         _uil_small3View.alpha = 0.0;
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                            tmp.alpha = 1.0;
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        [self addGesturesToViews];
                    }
     ];
}

#pragma mark - TopRight part 1

- (IBAction)btn1Tapped:(id)sender {
    
    [_uiv_1 removeConstraint:_constraint_uiiv_1_X];
    [_uiv_1 removeConstraint:_constraint_uiiv_1_Y];
    _view1_H_Constant.constant = 768;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uil_1View.alpha = 0.0f;
                         _uil_small1View.alpha = 1.0f;
                         
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1042.0f, 0.0f, 2068, 1556);
                         _uiiv_1.frame = CGRectMake(0.0f, 0.0f, 1024.0f, 768.0f);
                         [self.view layoutIfNeeded];
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 102) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
                            [_uiv_1 removeGestureRecognizer:recognizer];
                        }
                        UITapGestureRecognizer *tapToReverse = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reverseView1:)];
                        tapToReverse.delegate = self;
                        _uiv_1.userInteractionEnabled = YES;
                        [_uiv_1 addGestureRecognizer:tapToReverse];
                    }
     ];
}

-(IBAction)reverseView1:(id)sender{
    
    _view1_H_Constant.constant = 571;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uil_1View.alpha = 1.0;
                         _uil_small1View.alpha = 0.0f;
                         
                          _uiiv_1.frame = CGRectMake(-200.0f, 100.0f, 1024.0f, 768.0f);
                         _uiv_bigContainer.frame = CGRectMake(-540.0f, -321.0f, 2066, 1554); 
                         [self.view layoutIfNeeded];
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         _uiiv_1.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(kMasterAngle));
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 tmp.alpha = 1.0;
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        [self addGesturesToViews];
                    }
     ];
}

#pragma mark - TopRight part 2

- (IBAction)btn2Tapped:(id)sender {
    
    _view2_H_Constant.constant = 768;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uil_2View.alpha = 0.0;
                         _uil_small2View.alpha = 1.0;
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1042.0f, -589.0f, 2066, 1554);
                         [self.view layoutIfNeeded];
                         _uiiv_2.frame = CGRectMake(0.0f, 0.0f, 1024.0f, 768.0f);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                             if (tmp.tag == 103) {
                                 
                             }
                             else{
                                 tmp.alpha = 0.0;
                             }
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        for (UIGestureRecognizer *recognizer in self.view.gestureRecognizers) {
                            [_uiv_2 removeGestureRecognizer:recognizer];
                        }
                        UITapGestureRecognizer *tapToReverse = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reverseView2:)];
                        tapToReverse.delegate = self;
                        _uil_small2View.userInteractionEnabled = YES;
                        [_uil_small2View addGestureRecognizer:tapToReverse];

                    }
     ];
}


-(IBAction)reverseView2:(id)sender{
    
    _view2_H_Constant.constant = 177;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uil_2View.alpha = 1.0;
                         _uil_small2View.alpha = 0.0;
                         _uiv_bigContainer.frame = CGRectMake(-540.0f, -321.0f, 2066, 1554);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-kMasterAngle));
                         [self.view layoutIfNeeded];
                         _uiiv_2.frame = CGRectMake(0.0f, -589.0f, 1024.0f, 768.0f);
                         
                         for (UIView *tmp in [_uiv_bigContainer subviews]) {
                                 tmp.alpha = 1.0;
                         }
                     }
                     completion:^(BOOL finished)
                    {
                        [self addGesturesToViews];
                    }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
