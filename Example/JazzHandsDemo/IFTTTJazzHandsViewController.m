       //
//  IFTTTJazzHandsViewController.m
//  JazzHandsDemo
//
//  Created by Devin Foley on 9/27/13.
//  Copyright (c) 2013 IFTTT Inc. All rights reserved.
//

#import "IFTTTJazzHandsViewController.h"
#import <Masonry/Masonry.h>
#import "IFTTTCircleView.h"

#import "SavrLabel.h"



@interface IFTTTJazzHandsViewController ()

@property (nonatomic, strong) IFTTTCircleView *circle;

@property (nonatomic, strong) SavrLabel *page1Label;
@property (nonatomic, strong) UIImageView *bubble;
@property (nonatomic, strong) UIImageView *dots;


@property (nonatomic, strong) SavrLabel *page2Label;
@property (nonatomic, strong) UIImageView *wallet;
@property (nonatomic, strong) UIImageView *cash3;
@property (nonatomic, strong) UIImageView *cash2;
@property (nonatomic, strong) UIImageView *cash1;


@property (nonatomic, strong) SavrLabel *page3Label;
@property (nonatomic, strong) UIImageView *fries;
@property (nonatomic, strong) UIImageView *pizza;
@property (nonatomic, strong) UIImageView *ticket;


@property (nonatomic, strong) SavrLabel *page4Label;
@property (nonatomic, strong) UIImageView *iPhone;
@property (nonatomic, strong) UIImageView *itemFries;
@property (nonatomic, strong) UIImageView *itemPizza;
@property (nonatomic, strong) UIImageView *itemTicket;


@property (nonatomic, strong) SavrLabel *page5Label;
@property (nonatomic, strong) UIImageView *bag;
@property (nonatomic, strong) UIImageView *glow;
@property (nonatomic, strong) UIButton *startButton;


@property (assign) double SCREEN_WIDTH;
@property (assign) double SCREEN_HEIGHT;

@end


@implementation IFTTTJazzHandsViewController

- (NSUInteger)numberOfPages {
    // Tell the scroll view how many pages it should have
    return 5;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    self.view.backgroundColor = [UIColor colorWithRed:0.1 green:0.04 blue:0.11 alpha:1];
    
    _SCREEN_WIDTH = self.view.bounds.size.width;
    _SCREEN_HEIGHT = self.view.bounds.size.height;
    
    [self configureViews];
    [self configureAnimations];
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    //[self scaleAirplanePathToSize:self.scrollView.frame.size];
}

#pragma mark - iOS8+ Resizing
/*
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [self scaleAirplanePathToSize:size];
    } completion:nil];
}
*/

#pragma mark - iOS7 Orientation Change Resizing
/*
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    CGSize newPageSize;
    
    if ((UIInterfaceOrientationIsLandscape(self.interfaceOrientation)
         && UIInterfaceOrientationIsPortrait(toInterfaceOrientation))
        || (UIInterfaceOrientationIsPortrait(self.interfaceOrientation)
            && UIInterfaceOrientationIsLandscape(toInterfaceOrientation))) {
            
            newPageSize = CGSizeMake(CGRectGetHeight(self.scrollView.frame), CGRectGetWidth(self.scrollView.frame));
        } else {
            newPageSize = CGSizeMake(CGRectGetWidth(self.scrollView.frame), CGRectGetHeight(self.scrollView.frame));
        }
    
    [UIView animateWithDuration:duration animations:^{
        [self scaleAirplanePathToSize:newPageSize];
    } completion:nil];
}*/

#pragma mark - Configure Views and Animations
- (void)configureViews {
    //PAGE 1
    self.circle = [IFTTTCircleView new];
    [self.contentView addSubview:self.circle];
    
    
    self.bubble = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bubble"]];
    [self.contentView addSubview:self.bubble];
    
    
    self.dots = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"dots"]];
    [self.contentView addSubview:self.dots];
   
    self.page1Label = [[SavrLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    self.page1Label.text = [NSString stringWithFormat:@"So there's something that\nyou want to buy..."];
    [self.contentView addSubview:self.page1Label];

    
    
    //PAGE 2
    self.page2Label = [[SavrLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    self.page2Label.text = [NSString stringWithFormat:@"But you don’t want to feel\nlike you’re wasting money."];
    [self.contentView addSubview:self.page2Label];
    
    self.cash3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cash3"]];
    [self.contentView addSubview:self.cash3];
    
    self.cash2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cash3"]];
    [self.contentView addSubview:self.cash2];
    
    self.cash1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cash3"]];
    [self.contentView addSubview:self.cash1];
    
    self.wallet = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"wallet"]];
    [self.contentView addSubview:self.wallet];
    
    
    
    //PAGE 3
    self.page3Label = [[SavrLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    self.page3Label.text = [NSString stringWithFormat:@"And you probably make a lot\nof unnecessary purchases."];
    [self.contentView addSubview:self.page3Label];
    
    self.fries = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fries"]];
    [self.contentView addSubview:self.fries];
    
    self.pizza = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pizza"]];
    [self.contentView addSubview:self.pizza];
    
    self.ticket = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ticket"]];
    [self.contentView addSubview:self.ticket];
    
    
    //PAGE 4
    self.page4Label = [[SavrLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    self.page4Label.text = [NSString stringWithFormat:@"If you skipped out on those\npurchases and recorded them..."];
    [self.contentView addSubview:self.page4Label];
    
    self.iPhone = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"iPhone"]];
    [self.contentView addSubview:self.iPhone];
    
    self.itemFries = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"itemFries"]];
    [self.contentView addSubview:self.itemFries];
    
    self.itemPizza = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"itemPizza"]];
    [self.contentView addSubview:self.itemPizza];
    
    self.itemTicket = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"itemTicket"]];
    [self.contentView addSubview:self.itemTicket];
    
    
    //PAGE 5
    self.page5Label = [[SavrLabel alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    self.page5Label.text = [NSString stringWithFormat:@"You could buy whatever you\nwant completely guilt free!"];
    [self.contentView addSubview:self.page5Label];
    
    self.glow = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"glow"]];
    [self.contentView addSubview:self.glow];
    
    self.bag = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bag"]];
    [self.contentView addSubview:self.bag];
    
    self.startButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 175, 40)];
    [self.contentView addSubview:self.startButton];
}


- (void)configureAnimations {
    //Jordan's custom animations
    [self configureLabelAnimations];
    [self configureBubbleAndDotsAnimations];
    
    
    [self configureWalletAnimations];
    [self configureMoneyAnimations];


    [self configureJunkItemsAnimations];
    

    [self configureiPhoneAnimations];
    [self configureItemsAnimations];
    
    
    [self configureBagAnimations];
    [self configureGlowAnimation];
    [self configureStartButton];
    
    
    [self animateCurrentFrame];
    [self configureCircleAnimations];
}

#pragma mark - Label Animations
- (void)configureLabelAnimations {
    
    //LABEL 1
    [self.page1Label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.75);
    }];
    [self keepView:self.page1Label onPages:@[@(0), @(0)]];
//    IFTTTAlphaAnimation *labelFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.page1Label];
//    [labelFadeAnimation addKeyframeForTime:0 alpha:1];
//    [labelFadeAnimation addKeyframeForTime:1 alpha:0];
//    [self.animator addAnimation:labelFadeAnimation];
    
    
    //LABEL 2
    [self.page2Label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.75);
    }];
    [self keepView:self.page2Label onPages:@[@(1), @(1)]];
    //[self keepView:self.page2Label onPage:1 withAttribute:IFTTTHorizontalPositionAttributeCenterX];
    

    //LABEL 3
    [self.page3Label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.75);
    }];
    [self keepView:self.page3Label onPages:@[@(2), @(2)]];
    
    //LABEL 4
    [self.page4Label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.75);
    }];
    [self keepView:self.page4Label onPages:@[@(3)]];
    
    //LABEL 5
    [self.page5Label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.75);
    }];
    [self keepView:self.page5Label onPages:@[@(4), @(5)] atTimes:@[@(4), @(5)]];

}


#pragma mark - Page 1 animations
- (void) configureBubbleAndDotsAnimations {
    
//dots
    [self.dots mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.lessThanOrEqualTo(self.bubble).multipliedBy(.25);
        make.height.lessThanOrEqualTo(self.bubble).multipliedBy(.4);
    }];
    
    
    IFTTTTranslationAnimation *dotsMoveAnimation = [IFTTTTranslationAnimation animationWithView:self.dots];
    [dotsMoveAnimation addKeyframeForTime:0 translation:CGPointMake(_SCREEN_WIDTH / 2 - 30, _SCREEN_HEIGHT * .51)];
    [dotsMoveAnimation addKeyframeForTime:.35 translation:CGPointMake(_SCREEN_WIDTH / 2 - 30, _SCREEN_HEIGHT + 100)];
    [self.animator addAnimation:dotsMoveAnimation];
    
    IFTTTRotationAnimation *dotsRotationAnimation = [IFTTTRotationAnimation animationWithView:self.dots];
    [dotsRotationAnimation addKeyframeForTime:0 rotation:0];
    [dotsRotationAnimation addKeyframeForTime:1 rotation:-100];
    [self.animator addAnimation:dotsRotationAnimation];
    
    
//bubble
    [self.bubble mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.675);
        make.height.equalTo(self.bubble.mas_width).multipliedBy(0.86);
    }];
    
    NSLayoutConstraint *jazzVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.bubble
                                                                              attribute:NSLayoutAttributeCenterY
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:self.circle
                                                                              attribute:NSLayoutAttributeCenterY
                                                                             multiplier:1.f constant:0.f];
    
     [self.contentView addConstraint:jazzVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *jazzVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:jazzVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.circle];
    
    [jazzVerticalAnimation addKeyframeForTime:0 multiplier:-0.14f];
    [jazzVerticalAnimation addKeyframeForTime:1 multiplier:-0.64f];
    [self.animator addAnimation:jazzVerticalAnimation];

    // keep BUBBLE on page 0, a little to the right
    [self keepView:self.bubble onPages:@[@(0)] atTimes:@[@(0)]];
    
    // Rotate BUBBLE 100 degrees counterclockwise between pages 0 and 1
    IFTTTRotationAnimation *bubbleRotationAnimation = [IFTTTRotationAnimation animationWithView:self.bubble];
    [bubbleRotationAnimation addKeyframeForTime:0 rotation:0];
    [bubbleRotationAnimation addKeyframeForTime:1 rotation:100];
    [self.animator addAnimation:bubbleRotationAnimation];
}


#pragma mark - Page 2 Animations
- (void)configureWalletAnimations {
    [self.wallet mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.size.width.lessThanOrEqualTo(self.scrollView).multipliedBy(0.8);
        make.width.equalTo(self.scrollView).multipliedBy(0.7).with.priorityHigh();
        make.height.equalTo(self.scrollView).multipliedBy(0.2);
        make.centerY.equalTo(self.contentView);
    }];
    [self keepView:self.wallet onPages:@[@(1), @(.5), @(1)] atTimes:@[@(0), @(.5), @(1)]];
    //[self keepView:self.wallet onPages:@[@(1), @(.5), @(1.5)] atTimes:@[@(1), @(1.4), @(3)]];
    
    // Keep the little cloud a bit to the left of pages 1 and 2
    //[self keepView:self.littleCloud onPages:@[@(.75), @(.1), @(1.75)] atTimes:@[@(0), @(1), @(2)]];
    
}


- (void)configureMoneyAnimations {
    
//TOP CASH (3)
    [self.cash3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(self.scrollView).multipliedBy(0.3);
        make.width.equalTo(self.scrollView).multipliedBy(0.3);
    }];
    
    [self keepView:self.cash3 onPages:@[@(.45), @(.6), @(1.1), @(1)] atTimes:@[@(0), @(.5), @(1), @(2)]];
    
    NSLayoutConstraint *cashVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.cash3
                                                                                  attribute:NSLayoutAttributeCenterY
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.contentView
                                                                                  attribute:NSLayoutAttributeTop
                                                                                 multiplier:1.f constant:0.f];
    [self.contentView addConstraint:cashVerticalConstraint];

    
    IFTTTConstraintMultiplierAnimation *cash3VerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:cashVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [cash3VerticalAnimation addKeyframeForTime:0 multiplier:-0.2f];
    [cash3VerticalAnimation addKeyframeForTime:0.5 multiplier:0.33f];
    [self.animator addAnimation:cash3VerticalAnimation];

    
    
//MIDDLE CASH (2)
    [self.cash2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(self.scrollView).multipliedBy(0.3);
        make.width.equalTo(self.scrollView).multipliedBy(0.3);
    }];
                                                       //mod                                      //mod
    [self keepView:self.cash2 onPages:@[@(.45), @(.6), @(.75), @(1.05), @(1)] atTimes:@[@(0), @(.5), @(.7), @(1), @(2)]];
    
    //move down
    NSLayoutConstraint *cash2VerticalConstraint = [NSLayoutConstraint constraintWithItem:self.cash2
                                                                               attribute:NSLayoutAttributeCenterY
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.contentView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.f constant:0.f];
    [self.contentView addConstraint:cash2VerticalConstraint];
    
    
    IFTTTConstraintMultiplierAnimation *cash2VerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:cash2VerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [cash2VerticalAnimation addKeyframeForTime:0 multiplier:-0.2f];
    [cash2VerticalAnimation addKeyframeForTime:0.5 multiplier:0.33f];
    [self.animator addAnimation:cash2VerticalAnimation];

    //rotate it
    IFTTTRotationAnimation *cash2RotationAnimation = [IFTTTRotationAnimation animationWithView:self.cash2];
    [cash2RotationAnimation addKeyframeForTime:0.5 rotation:0];
    [cash2RotationAnimation addKeyframeForTime:0.7 rotation:11];
    [self.animator addAnimation:cash2RotationAnimation];
    
    
    
//BOTTOM CASH (1)
    [self.cash1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(self.scrollView).multipliedBy(0.3);
        make.width.equalTo(self.scrollView).multipliedBy(0.3);
    }];
    //mod                                      //mod
    [self keepView:self.cash1 onPages:@[@(.45), @(.6), @(.75), @(1.0), @(1)] atTimes:@[@(0), @(.5), @(.7), @(1), @(2)]];
    
    //move down
    NSLayoutConstraint *cash1VerticalConstraint = [NSLayoutConstraint constraintWithItem:self.cash1
                                                                               attribute:NSLayoutAttributeCenterY
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.contentView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.f constant:0.f];
    [self.contentView addConstraint:cash1VerticalConstraint];
    
    
    IFTTTConstraintMultiplierAnimation *cash1VerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:cash1VerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [cash1VerticalAnimation addKeyframeForTime:0 multiplier:-0.2f];
    [cash1VerticalAnimation addKeyframeForTime:0.5 multiplier:0.33f];
    [self.animator addAnimation:cash1VerticalAnimation];
    
    IFTTTRotationAnimation *cash1RotationAnimation = [IFTTTRotationAnimation animationWithView:self.cash1];
    [cash1RotationAnimation addKeyframeForTime:0.5 rotation:0];
    [cash1RotationAnimation addKeyframeForTime:1.0 rotation:25];
    [self.animator addAnimation:cash1RotationAnimation];

    
}


#pragma mark - Page 3 Animations
- (void)configureJunkItemsAnimations {
    
    
//FRIES
    [self.fries mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.scrollView).multipliedBy(0.33);
        make.height.equalTo(self.scrollView).multipliedBy(0.26);
        //make.centerY.equalTo(self.contentView).multipliedBy(0.53);
    }];
    
    [self keepView:self.fries onPages:@[@(1.1), @(1.8), @(2)] atTimes:@[@(1.3), @(2), @(3)]];
    
    IFTTTScaleAnimation *friesScaleAnimation = [IFTTTScaleAnimation animationWithView:self.fries];
    [friesScaleAnimation addKeyframeForTime:1.7 scale:0.5];
    [friesScaleAnimation addKeyframeForTime:2.0 scale:1.0];
    [self.animator addAnimation:friesScaleAnimation];
    
    IFTTTAlphaAnimation *friesFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.fries];
    [friesFadeAnimation addKeyframeForTime:1.0 alpha:0.0];
    [friesFadeAnimation addKeyframeForTime:1.7 alpha:0.0];
    [friesFadeAnimation addKeyframeForTime:2.0 alpha:1.0];
    [self.animator addAnimation:friesFadeAnimation];
    
    NSLayoutConstraint *friesVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.fries
                                                                                attribute:NSLayoutAttributeCenterY
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.contentView
                                                                                attribute:NSLayoutAttributeTop
                                                                               multiplier:1.f constant:0.f];
    [self.contentView addConstraint:friesVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *friesVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:friesVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [friesVerticalAnimation addKeyframeForTime:2.0 multiplier:0.29f];
    [friesVerticalAnimation addKeyframeForTime:3.0 multiplier:-0.3f];
    [self.animator addAnimation:friesVerticalAnimation];
    
    
    
//PIZZA
    [self.pizza mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.4);
        make.height.equalTo(self.circle).multipliedBy(0.4);
        //make.centerY.equalTo(self.contentView).multipliedBy(0.8);
    }];
    
    [self keepView:self.pizza onPages:@[@(1.45), @(2.15), @(4)] atTimes:@[@(1.3), @(2), @(3)]];

    IFTTTScaleAnimation *pizzaScaleAnimation = [IFTTTScaleAnimation animationWithView:self.pizza];
    [pizzaScaleAnimation addKeyframeForTime:1.5 scale:0.5];
    [pizzaScaleAnimation addKeyframeForTime:1.8 scale:1.0];
    [self.animator addAnimation:pizzaScaleAnimation];
    
    IFTTTAlphaAnimation *pizzaFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.pizza];
    [pizzaFadeAnimation addKeyframeForTime:1.0 alpha:0.0];
    [pizzaFadeAnimation addKeyframeForTime:1.5 alpha:0.0];
    [pizzaFadeAnimation addKeyframeForTime:1.8 alpha:1.0];
    [self.animator addAnimation:pizzaFadeAnimation];
    
    NSLayoutConstraint *pizzaVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.pizza
                                                                              attribute:NSLayoutAttributeCenterY
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:self.contentView
                                                                              attribute:NSLayoutAttributeTop
                                                                             multiplier:1.f constant:0.f];
    [self.contentView addConstraint:pizzaVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *pizzaVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:pizzaVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [pizzaVerticalAnimation addKeyframeForTime:2.0 multiplier:0.4f];
    [pizzaVerticalAnimation addKeyframeForTime:3.0 multiplier:-0.6f];
    [self.animator addAnimation:pizzaVerticalAnimation];
    
    
    
    
//TICKET
    [self.ticket mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.42);
        make.height.equalTo(self.circle).multipliedBy(0.323);
        //make.centerY.equalTo(self.contentView).multipliedBy(1.2);
    }];
    
    [self keepView:self.ticket onPages:@[@(1.2), @(1.9), @(4)] atTimes:@[@(1.3), @(2), @(3)]];
    
    IFTTTScaleAnimation *ticketScaleAnimation = [IFTTTScaleAnimation animationWithView:self.ticket];
    [ticketScaleAnimation addKeyframeForTime:1.6 scale:0.5];
    [ticketScaleAnimation addKeyframeForTime:1.9 scale:1.0];
    [self.animator addAnimation:ticketScaleAnimation];
    
    IFTTTAlphaAnimation *ticketFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.ticket];
    [ticketFadeAnimation addKeyframeForTime:1.0 alpha:0.0];
    [ticketFadeAnimation addKeyframeForTime:1.6 alpha:0.0];
    [ticketFadeAnimation addKeyframeForTime:1.9 alpha:1.0];
    [self.animator addAnimation:ticketFadeAnimation];
    
    NSLayoutConstraint *ticketVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.ticket
                                                                               attribute:NSLayoutAttributeCenterY
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.contentView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.f constant:0.f];
    [self.contentView addConstraint:ticketVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *ticketVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:ticketVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [ticketVerticalAnimation addKeyframeForTime:2.0 multiplier:0.58f];
    [ticketVerticalAnimation addKeyframeForTime:3.0 multiplier:1.6f];
    [self.animator addAnimation:ticketVerticalAnimation];
}


#pragma mark - Page 4 Animations
- (void)configureiPhoneAnimations {
    [self.iPhone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.5);
        make.height.equalTo(self.circle).multipliedBy(0.916);
        make.centerY.equalTo(self.contentView).multipliedBy(0.8);
    }];
    
    [self keepView:self.iPhone onPages:@[@(3.3), @(3), @(3)] atTimes:@[@(2), @(3), @(4)]];
}


- (void)configureItemsAnimations {
    
//ITEM FRIES
    [self.itemFries mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.412);
        make.height.equalTo(self.circle).multipliedBy(0.08);
    }];
    
    [self keepView:self.itemFries onPages:@[@(3.3), @(3), @(3)] atTimes:@[@(2), @(3), @(4)]];
    
    
    NSLayoutConstraint *itemFriesVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.itemFries
                                                                               attribute:NSLayoutAttributeCenterY
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.contentView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.f constant:0.f];
    [self.contentView addConstraint:itemFriesVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *itemFriesVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:itemFriesVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [itemFriesVerticalAnimation addKeyframeForTime:2.0 multiplier:1.2f];
    [itemFriesVerticalAnimation addKeyframeForTime:3.0 multiplier:0.223f];
    [self.animator addAnimation:itemFriesVerticalAnimation];

    
    
//ITEM PIZZA
    [self.itemPizza mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.412);
        make.height.equalTo(self.circle).multipliedBy(0.08);
    }];
    
    [self keepView:self.itemPizza onPages:@[@(3.3), @(3), @(3)] atTimes:@[@(2), @(3), @(4)]];
    
    NSLayoutConstraint *itemPizzaVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.itemPizza
                                                                                   attribute:NSLayoutAttributeCenterY
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.contentView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1.f constant:0.f];
    [self.contentView addConstraint:itemPizzaVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *itemPizzaVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:itemPizzaVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [itemPizzaVerticalAnimation addKeyframeForTime:2.0 multiplier:1.4f];
    [itemPizzaVerticalAnimation addKeyframeForTime:3.0 multiplier:0.265f];
    [self.animator addAnimation:itemPizzaVerticalAnimation];
    
    
//ITEM TICKET
    [self.itemTicket mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.412);
        make.height.equalTo(self.circle).multipliedBy(0.08);
    }];
    
    [self keepView:self.itemTicket onPages:@[@(3.3), @(3), @(3)] atTimes:@[@(2), @(3), @(4)]];
    
    NSLayoutConstraint *itemTicketVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.itemTicket
                                                                                   attribute:NSLayoutAttributeCenterY
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.contentView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1.f constant:0.f];
    [self.contentView addConstraint:itemTicketVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *itemTicketVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:itemTicketVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [itemTicketVerticalAnimation addKeyframeForTime:2.0 multiplier:1.6f];
    [itemTicketVerticalAnimation addKeyframeForTime:3.0 multiplier:0.308f];
    [self.animator addAnimation:itemTicketVerticalAnimation];
}


#pragma mark - Page 5 Animations
- (void)configureBagAnimations {
    [self.bag mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.6);
        make.height.equalTo(self.circle).multipliedBy(0.53);
    }];
    
    [self keepView:self.bag onPages:@[@(3),@(3.4), @(4), @(5)] atTimes:@[@(3), @(3.4), @(4), @(5)]];

    
    NSLayoutConstraint *bagVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.bag
                                                                                   attribute:NSLayoutAttributeCenterY
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.contentView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1.f constant:0.f];
    [self.contentView addConstraint:bagVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *bagVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:bagVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [bagVerticalAnimation addKeyframeForTime:3.4 multiplier:-0.3f];
    [bagVerticalAnimation addKeyframeForTime:3.8 multiplier:0.45f];
    [self.animator addAnimation:bagVerticalAnimation];
}


- (void)configureGlowAnimation {
    [self.glow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.circle).multipliedBy(0.5);
        make.height.equalTo(self.circle).multipliedBy(0.1575);
        
        //make.centerY.equalTo(self.contentView).multipliedBy(0.45);
    }];
    
    [self keepView:self.glow onPages:@[@(3.6), @(4), @(5)] atTimes:@[@(3.6), @(4), @(5)]];
    
    NSLayoutConstraint *glowVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.glow
                                                                             attribute:NSLayoutAttributeCenterY
                                                                             relatedBy:NSLayoutRelationEqual
                                                                                toItem:self.contentView
                                                                             attribute:NSLayoutAttributeTop
                                                                            multiplier:1.f constant:0.f];
    [self.contentView addConstraint:glowVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *glowVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView constraint:glowVerticalConstraint attribute:IFTTTLayoutAttributeHeight referenceView:self.contentView];
    [glowVerticalAnimation addKeyframeForTime:3.8 multiplier:0.38f];
    [glowVerticalAnimation addKeyframeForTime:4.0 multiplier:0.22f];
    [self.animator addAnimation:glowVerticalAnimation];
    
    IFTTTAlphaAnimation *glowFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.glow];
    [glowFadeAnimation addKeyframeForTime:3.8 alpha:0.0];
    [glowFadeAnimation addKeyframeForTime:4.0 alpha:1.0];
    [self.animator addAnimation:glowFadeAnimation];
}


- (void)configureStartButton {
    
//APPEARANCE
    self.startButton.backgroundColor = [UIColor clearColor];
    
    
    self.startButton.layer.borderWidth = 1.5f;
    self.startButton.layer.cornerRadius = 3.0f;
    self.startButton.layer.borderColor = [[UIColor whiteColor] CGColor];
    
    [self.startButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.startButton setTitle:@"        Start saving       " forState:UIControlStateNormal];
    [self.startButton.titleLabel setFont:[UIFont fontWithName:@"OpenSans-Semibold" size:14.0]];
    
    [self.startButton setTitleColor:[UIColor colorWithRed:.75 green:.75 blue:.75 alpha:.75] forState:UIControlStateHighlighted];

    [self.startButton addTarget:self action:@selector(buttonHighlighted) forControlEvents:UIControlStateHighlighted];
    
//ANIMATIONS
    
    [self.startButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).multipliedBy(1.43);
    }];
    
    [self keepView:self.startButton onPages:@[@(3), @(4), @(5)] atTimes:@[@(3), @(4), @(5)]];
    
    IFTTTAlphaAnimation *buttonFadeAnimation = [IFTTTAlphaAnimation animationWithView:self.startButton];
    [buttonFadeAnimation addKeyframeForTime:3.8 alpha:0.0];
    [buttonFadeAnimation addKeyframeForTime:4.0 alpha:1.0];
    [self.animator addAnimation:buttonFadeAnimation];
    
//ACTION TRIGGER
    
    
    [self.startButton addTarget:self action:@selector(startButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonHighlighted {
    self.startButton.layer.borderColor = [[UIColor colorWithRed:.75 green:.75 blue:.75 alpha:.75] CGColor];
}

#pragma mark - new View Controller
- (void)startButtonTapped {
    
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor blueColor];
    
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - other animations
- (void)configureCircleAnimations {
    // lay out the circle with autolayout (no x-position constraint since we are using the keepView:onPage: method)
    [self.circle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.lessThanOrEqualTo(self.scrollView);
        make.width.equalTo(self.scrollView).multipliedBy(0.9).with.priorityHigh();
        make.top.greaterThanOrEqualTo(self.scrollView).offset(60);
        make.height.equalTo(self.circle.mas_width);
        make.centerY.equalTo(self.contentView).multipliedBy(0.8);
    }];
    
    // keep the circle centered on pages 0 and 1
    [self keepView:self.circle onPages:@[@(0), @(1)]];
    
    // change the circle's color from gray to blue between pages 0 and 1
    IFTTTBackgroundColorAnimation *circleColorAnimation = [IFTTTBackgroundColorAnimation animationWithView:self.circle];
    [circleColorAnimation addKeyframeForTime:0 color:[UIColor colorWithRed:0.4f green:0.4f blue:0.4f alpha:0.0]];
    [circleColorAnimation addKeyframeForTime:1 color:[UIColor colorWithRed:0.14f green:0.8f blue:1.f alpha:0.0]];
    [self.animator addAnimation:circleColorAnimation];
    
    // grow the circle into the background between pages 0 and 1
    IFTTTScaleAnimation *circleScaleAnimation = [IFTTTScaleAnimation animationWithView:self.circle];
    [circleScaleAnimation addKeyframeForTime:0 scale:1 withEasingFunction:IFTTTEasingFunctionEaseOutBounce];
    [circleScaleAnimation addKeyframeForTime:1 scale:6];
    [self.animator addAnimation:circleScaleAnimation];
    
    // hide the circle after page 1 (instead the background color will show)
    IFTTTHideAnimation *circleHideAnimation = [IFTTTHideAnimation animationWithView:self.circle hideAt:1.75];
    
    //    IFTTTBackgroundColorAnimation *circleColorAnimation2 = [IFTTTBackgroundColorAnimation animationWithView:self.circle];
    //    [circleColorAnimation addKeyframeForTime:1 color:[UIColor colorWithRed:0.14f green:0.8f blue:1.f alpha:1.f]];
    //    [circleColorAnimation addKeyframeForTime:1.75 color:[UIColor colorWithRed:0.42 green:0.76 blue:0.58 alpha:1]];
    //    [self.animator addAnimation:circleColorAnimation2];
    
    [self.animator addAnimation:circleHideAnimation];
}


@end
