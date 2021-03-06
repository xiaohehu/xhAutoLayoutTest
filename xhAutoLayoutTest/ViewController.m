//
//  ViewController.m
//  xhAutoLayoutTest
//
//  Created by Xiaohe Hu on 10/22/13.
//  Copyright (c) 2013 Xiaohe Hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *uiv_bigContainer;

@property (weak, nonatomic) IBOutlet UIButton *uib_topLeft;
@property (weak, nonatomic) IBOutlet UIButton *uib_bottomLeft;
@property (weak, nonatomic) IBOutlet UIButton *uib_bottomRight;
@property (weak, nonatomic) IBOutlet UIButton *uib_topRight2;
@property (weak, nonatomic) IBOutlet UIButton *uib_topRight1;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_Y;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint_X;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topRight1_H_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topRight1_W_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topRight2_H_Constant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bigContainer_H;

@property (weak, nonatomic) IBOutlet UIView *uiv_topLeft;
@property (weak, nonatomic) IBOutlet UIView *uiv_bottomLeft;
@property (weak, nonatomic) IBOutlet UIView *uiv_bottomRight;
@property (weak, nonatomic) IBOutlet UIView *uiv_topRight1;
@property (weak, nonatomic) IBOutlet UIView *uiv_topRight2;

@property (weak, nonatomic) NSLayoutConstraint *brownToTop;
@property (weak, nonatomic) NSLayoutConstraint *greenToBtm;
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
	// Do any additional setup after loading the view, typically from a nib.

    _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
    
}

-(void)addConstraintsToTopRightPart
{
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-(0)-[_uiv_topRight1]"
                               options:NSLayoutFormatDirectionLeadingToTrailing
                               metrics:nil
                               views:NSDictionaryOfVariableBindings(_uiv_topRight1)]];

}

#pragma mark - Topleft Part
- (IBAction)topLeftBtnTapped:(id)sender {
    
    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];

        [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                             _uiv_bigContainer.frame = CGRectMake(0.0f, 0.0f, 2068, 1556);
                             //[self.view layoutIfNeeded];
                         } completion:^(BOOL finished)
                        {
                            [_uib_topLeft removeTarget:self action:@selector(topLeftBtnTapped:) forControlEvents:UIControlEventAllTouchEvents];
                            [_uib_topLeft addTarget:self action:@selector(reverseRedPart:) forControlEvents:UIControlEventTouchDown];
                        }
         ];

    
}

-(IBAction)reverseRedPart:(id)sender{

//    [self.view addConstraint:self.constraint_X];
//    [self.view addConstraint:self.constraint_Y];
    
    [UIView animateWithDuration:1.33
                         animations:^{
                             _uiv_bigContainer.frame = CGRectMake(-522.0f, -394.0f, 2068, 1556);
                             _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
                             //[self.view layoutIfNeeded];
                         } completion:^(BOOL finished)
                            {
                                [_uib_topLeft removeTarget:self action:@selector(reverseRedPart:) forControlEvents:UIControlEventAllTouchEvents];
                                [_uib_topLeft addTarget:self action:@selector(topLeftBtnTapped:) forControlEvents:UIControlEventTouchDown];
                            }
         ];
}

#pragma mark - Bottomleft Part
- (IBAction)bottomLeftBtnTapped:(id)sender {

    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(0.0f, -788.0f, 2068, 1556);
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_bottomLeft removeTarget:self action:@selector(topLeftBtnTapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_bottomLeft addTarget:self action:@selector(reverseBluePart:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}
-(IBAction)reverseBluePart:(id)sender{

    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-522.0f, -394.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_bottomLeft removeTarget:self action:@selector(reverseBluePart:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_bottomLeft addTarget:self action:@selector(bottomLeftBtnTapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

#pragma mark - BottomRight Part
- (IBAction)bottomRightBtnTapped:(id)sender {
    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
    
    [UIView animateWithDuration:1.33
                     animations:^{
                        _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-844.0f, -788.0f, 2068, 1556);
                         _uiv_bottomLeft.alpha = 0.0;
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_bottomRight removeTarget:self action:@selector(bottomRightBtnTapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_bottomRight addTarget:self action:@selector(reverseYellowPart:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}
-(IBAction)reverseYellowPart:(id)sender{
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-522.0f, -394.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
                         _uiv_bottomLeft.alpha = 1.0;
                         //[self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_bottomRight removeTarget:self action:@selector(reverseYellowPart:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_bottomRight addTarget:self action:@selector(bottomRightBtnTapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

#pragma mark - TopRight part 1

- (IBAction)topRightBtn1Tapped:(id)sender {
    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
    
    _topRight1_H_Constant.constant = 768;
    //_bigContainer_H.constant = 1753;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1044.0f, 0.0f, 2068, 1556);
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_topRight1 removeTarget:self action:@selector(topRightBtn1Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_topRight1 addTarget:self action:@selector(reverseBrownPart:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

-(IBAction)reverseBrownPart:(id)sender{
    
    _topRight1_H_Constant.constant = 571;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-522.0f, -394.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_topRight1 removeTarget:self action:@selector(reverseBrownPart:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_topRight1 addTarget:self action:@selector(topRightBtn1Tapped:) forControlEvents:UIControlEventTouchDown];

     }
     ];
}

#pragma mark - TopRight part 2

- (IBAction)topRightBtn2Tapped:(id)sender {
    [self.view removeConstraint:self.constraint_X];
    [self.view removeConstraint:self.constraint_Y];
    
    _topRight2_H_Constant.constant = 768;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(0));
                         _uiv_bigContainer.frame = CGRectMake(-1044.0f, -591.0f, 2068, 1556);
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_topRight2 removeTarget:self action:@selector(topRightBtn2Tapped:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_topRight2 addTarget:self action:@selector(reverseGreenPart:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}


-(IBAction)reverseGreenPart:(id)sender{
    
    _topRight2_H_Constant.constant = 177;
    
    [UIView animateWithDuration:1.33
                     animations:^{
                         _uiv_bigContainer.frame = CGRectMake(-522.0f, -394.0f, 2068, 1556);
                         _uiv_bigContainer.transform = CGAffineTransformMakeRotation(RADIANS_TO_DEGREES(-30));
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
         [_uib_topRight2 removeTarget:self action:@selector(reverseGreenPart:) forControlEvents:UIControlEventAllTouchEvents];
         [_uib_topRight2 addTarget:self action:@selector(topRightBtn2Tapped:) forControlEvents:UIControlEventTouchDown];
     }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
