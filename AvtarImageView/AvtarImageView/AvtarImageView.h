//
//  AvtarImageView.h
//  AvtarImageView
//
//  Created by Mac-Vishal on 20/04/17.
//  Copyright © 2017 Vishal. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface AvtarImageView : UIImageView

@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isCircular;

@end
