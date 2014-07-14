//
//  IKMainViewController.m
//  IKFadeButtonExample
//
//  Created by Pablo Villar on 7/14/14.
//  Copyright (c) 2014 Inaka. All rights reserved.
//

#import "IKMainViewController.h"
#import "IKFadeButton.h"

typedef NS_ENUM(NSInteger, IKTag) {
    IKTagFirst  = 1,
    IKTagSecond = 2,
    IKTagThird  = 3
};

@interface IKMainViewController ()

@property (weak, nonatomic) IBOutlet IKFadeButton *firstButton;
@property (weak, nonatomic) IBOutlet IKFadeButton *secondButton;
@property (weak, nonatomic) IBOutlet IKFadeButton *thirdButton;

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel;

@property (readwrite, nonatomic) CGFloat firstDuration;
@property (readwrite, nonatomic) CGFloat secondDuration;
@property (readwrite, nonatomic) CGFloat thirdDuration;

@end

@implementation IKMainViewController

#pragma mark - Lifecycle

- (id)init
{
    self = [super init];
    if (self)
    {
        _firstDuration = .5;
        _secondDuration = 1;
        _thirdDuration = 2;
    }
    return self;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateForm];
}

#pragma mark - IBAction

- (IBAction)incrementFadeDuration:(id)sender
{
    IKTag tag = (IKTag)[sender tag];
    [self changeFadeDurationWithDelta:.1 tag:tag];
}

- (IBAction)decrementFadeDuration:(id)sender
{
    IKTag tag = (IKTag)[sender tag];
    [self changeFadeDurationWithDelta:-.1 tag:tag];
}

#pragma mark - Private

- (void)changeFadeDurationWithDelta:(CGFloat)duration tag:(IKTag)tag
{
    CGFloat oldDuration, newDuration;
    switch (tag)
    {
        case IKTagFirst:    oldDuration = self.firstDuration;   break;
        case IKTagSecond:   oldDuration = self.secondDuration;  break;
        case IKTagThird:    oldDuration = self.thirdDuration;   break;
    }
    
    newDuration = oldDuration;
    newDuration += [self isValidDuration:oldDuration + duration] ? duration : 0;

    switch (tag)
    {
        case IKTagFirst:    self.firstDuration = newDuration;   break;
        case IKTagSecond:   self.secondDuration = newDuration;  break;
        case IKTagThird:    self.thirdDuration = newDuration;   break;
    }
    
    [self updateForm];
}

- (void)updateForm
{
    self.firstButton.fadeDuration = self.firstDuration;
    self.secondButton.fadeDuration = self.secondDuration;
    self.thirdButton.fadeDuration = self.thirdDuration;
    self.firstLabel.text = [self textForDuration:self.firstDuration];
    self.secondLabel.text = [self textForDuration:self.secondDuration];
    self.thirdLabel.text = [self textForDuration:self.thirdDuration];
}

- (NSString *)textForDuration:(CGFloat)duration
{
    return [NSString stringWithFormat:@"%.1f s", duration];
}

- (BOOL)isValidDuration:(CGFloat)duration
{
    return duration > .01 && duration < 10;
}

@end
