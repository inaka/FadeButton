//
//  IKFadeButton.h
//  Inaka
//
//  Created by Pablo Villar on 7/11/14.
//  Copyright (c) 2014 Inaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IKFadeButton : UIButton

/**
 Fade animation duration of the button (in seconds). Default value is 0.5.
 */
@property (readwrite, nonatomic) CGFloat fadeDuration;

@end
