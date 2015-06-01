//
//  ETWinkerField.h
//  Pods
//
//  Created by Ersen Tekin on 26/05/15.
//
//

#import <UIKit/UIKit.h>

@protocol ETWinkerFieldProtocol <NSObject>

@optional
-(void)ETWinkerFieldIconButtonTapped;

@end

@interface ETWinkerField : UITextField <UITextFieldDelegate> {
    UIButton* btnIcon;
}

@property (strong, nonatomic) id <ETWinkerFieldProtocol> winkDelegate;
@property (strong, nonatomic) NSString* passwordShownText;
@property (strong, nonatomic) NSString* passwordHiddenText;
@property (strong, nonatomic) UIImage* iconImageShown;
@property (strong, nonatomic) UIImage* iconImageHidden;
@property (strong, nonatomic) NSMutableArray* arrayStatusImages;
@property (strong, nonatomic) NSMutableArray* arrayStatusTexts;
@property float iconRightMargin;

@end
