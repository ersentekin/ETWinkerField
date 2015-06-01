//
//  ETViewController.h
//  ETWinkerField
//
//  Created by Ersen Tekin on 05/26/2015.
//  Copyright (c) 2014 Ersen Tekin. All rights reserved.
//

@import UIKit;

#import <ETWinkerField/ETWinkerField.h>

@interface ETViewController : UIViewController <ETWinkerFieldProtocol>

@property (strong, nonatomic) IBOutlet ETWinkerField *passwordTextField;

@end
