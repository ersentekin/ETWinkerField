//
//  ETViewController.m
//  ETWinkerField
//
//  Created by Ersen Tekin on 05/26/2015.
//  Copyright (c) 2014 Ersen Tekin. All rights reserved.
//

#import "ETViewController.h"


@interface ETViewController ()

@end

@implementation ETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // left padding for text
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 1)];
    self.passwordTextField.leftView = paddingView;
    self.passwordTextField.leftViewMode = UITextFieldViewModeAlways;
    [self.passwordTextField setWinkDelegate:self];
    
    // textfield view customizations
    self.passwordTextField.layer.borderWidth = 1.0f;
    self.passwordTextField.layer.borderColor = [UIColor colorWithWhite:0.85 alpha:1].CGColor;
    self.passwordTextField.layer.cornerRadius = 3.0f;
    [self.passwordTextField setFont:[UIFont fontWithName:@"Helvetica-Neue" size:17.0f]];
    UIImage* iconImageShown = [UIImage imageNamed:@"wink.png"];
    UIImage* iconImageHidden = [UIImage imageNamed:@"wink-hidden.png"];
    
    // ATTENTION!
    // insert hidden image FIRST
    NSMutableArray* arrayImages = [[NSMutableArray alloc] initWithObjects:iconImageHidden, iconImageShown, nil];
    
    self.passwordTextField.arrayStatusImages = [arrayImages mutableCopy];
    
}

-(void)ETWinkerFieldIconButtonTapped {
    NSLog(@"wink button tapped !");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
