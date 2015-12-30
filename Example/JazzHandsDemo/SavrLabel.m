//
//  SavrLabel.m
//  JazzHandsDemo
//
//  Created by Jordan White on 12/28/15.
//  Copyright © 2015 IFTTT Inc. All rights reserved.
//

#import "SavrLabel.h"

@implementation SavrLabel


- (instancetype)initWithFrame:(CGRect)frame andScreenW:(float)width andScreenH:(float)height {
    
    if (self = [super initWithFrame:frame]) {
        
        self.center = CGPointMake(width / 2, height * .87);
        self.numberOfLines = 2;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor clearColor];
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont fontWithName:@"OldStandardTT-Italic" size:19];
    }
    
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.numberOfLines = 2;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor clearColor];
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont fontWithName:@"OldStandardTT-Italic" size:19];
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
