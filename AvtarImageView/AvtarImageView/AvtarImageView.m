//
//  AvtarImageView.m
//  AvtarImageView
//
//  Created by Mac-Vishal on 20/04/17.
//  Copyright © 2017 Vishal. All rights reserved.
//

#import "AvtarImageView.h"

@implementation AvtarImageView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.borderWidth    = 2;
        self.cornerRadious  = 10;
        self.borderColor = [UIColor blackColor];
        
        [self customInit];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customInit];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [self customInit];
}

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [self setNeedsDisplay];
}


- (void)prepareForInterfaceBuilder {
    
    [self customInit];
}

- (void)customInit {
    
    self.layer.cornerRadius = self.cornerRadious;
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor =self.borderColor.CGColor;
    self.layer.masksToBounds = YES;
    _isCircular = self.isCircular;
    
    if (_isCircular) {
        
        self.layer.cornerRadius = self.frame.size.width/2;
    }
}
@end
