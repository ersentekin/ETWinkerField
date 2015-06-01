//
//  ETWinkerField.m
//  Pods
//
//  Created by Ersen Tekin on 26/05/15.
//
//

#import "ETWinkerField.h"

#define kIconRightMarginDefault 10

@implementation ETWinkerField

-(instancetype)init {
    if (self == [super init])
        [self commonSetup];
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self == [super initWithCoder:aDecoder])
        [self commonSetup];
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame])
        [self commonSetup];
    return self;
}

-(void)commonSetup {
    
    [self setDelegate:self];
    self.passwordShownText = @"Show";
    self.passwordHiddenText = @"Hide";
    self.arrayStatusTexts = [[NSMutableArray alloc] initWithArray:@[self.passwordHiddenText, self.passwordShownText]];
    self.arrayStatusImages = [NSMutableArray new];
    
    self.iconRightMargin = kIconRightMarginDefault;
    self.returnKeyType = UIReturnKeyDone;
    
    [self createBtnIcon];
    [self arrangeBtnIcon];
    
}

-(void)createBtnIcon {
    
    if (!btnIcon) {
        
        btnIcon = [UIButton buttonWithType:UIButtonTypeCustom];
        btnIcon.frame = CGRectMake(0, 1, 45, self.frame.size.height - 2);
        btnIcon.contentMode = UIViewContentModeCenter;
        
        if (self.isSecureTextEntry) {
            [btnIcon setTitle:@"Show" forState:UIControlStateNormal];
        } else {
            [btnIcon setTitle:@"Hide" forState:UIControlStateNormal];
        }
        
        [btnIcon setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btnIcon.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Neue" size:13.0f]];
        [btnIcon addTarget:self action:@selector(btnIconAction:) forControlEvents:UIControlEventTouchUpInside];
        
        self.rightView = btnIcon;
        [self.rightView setBackgroundColor:[UIColor clearColor]];
        self.rightViewMode = UITextFieldViewModeAlways;
    }
    
}

- (CGRect) rightViewRectForBounds:(CGRect)bounds {
    
    CGRect textRect = [super rightViewRectForBounds:bounds];
    
    // right view padding
    textRect.origin.x -= self.iconRightMargin;
    return textRect;
}

-(void)arrangeBtnIcon {
    if (self.iconImageHidden && self.iconImageShown) {
        
        CGRect rectBtnIcon = CGRectMake(self.frame.size.width - kIconRightMarginDefault - self.iconImageShown.size.width, self.frame.size.height / 2 - self.iconImageShown.size.height / 2, self.iconImageShown.size.width, self.iconImageShown.size.height);
        [btnIcon setFrame:rectBtnIcon];
        [btnIcon setImage:[self.arrayStatusImages objectAtIndex:self.secureTextEntry] forState:UIControlStateNormal];
        [btnIcon.imageView setContentMode:UIViewContentModeScaleAspectFit];
    }
    
}

-(void)setArrayStatusImages:(NSMutableArray *)arrayStatusImages {
    _arrayStatusImages = arrayStatusImages;
    
    if (arrayStatusImages.count > 1) {
        self.iconImageShown = [_arrayStatusImages objectAtIndex:0];
        self.iconImageHidden = [_arrayStatusImages objectAtIndex:1];
    }
    
    if (btnIcon) {
        [self arrangeBtnIcon];
    }
}

-(void)btnIconAction:(UIButton*)sender {
    
    self.secureTextEntry = !self.secureTextEntry;
    if (self.iconImageShown && self.iconImageHidden) {
        [btnIcon setImage:[self.arrayStatusImages objectAtIndex:self.secureTextEntry] forState:UIControlStateNormal];
    } else {
        NSString* relatedText = [self.arrayStatusTexts objectAtIndex:(int)self.secureTextEntry];
        [btnIcon setTitle:relatedText forState:UIControlStateNormal];
    }
    
    if ([self.winkDelegate respondsToSelector:@selector(ETWinkerFieldIconButtonTapped)])
        [self.winkDelegate ETWinkerFieldIconButtonTapped];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    // to not clear text after changing shown option
    NSString *updatedString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    textField.text = updatedString;
    
    return NO;
}

@end
