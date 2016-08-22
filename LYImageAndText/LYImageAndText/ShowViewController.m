//
//  ShowViewController.m
//  LYImageAndText
//
//  Created by mac on 16/8/20.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController () {
    
    UITextView *_textView;
    
}

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(5, 100, self.size.width, self.size.height)];
    
    _textView.editable = NO;
    _textView.scrollEnabled = NO;
    
    _textView.textContainerInset = UIEdgeInsetsZero;
    _textView.textContainer.lineFragmentPadding = 0;
    
    _textView.attributedText = self.attributedString;
    
    [self.view addSubview:_textView];
}

@end
