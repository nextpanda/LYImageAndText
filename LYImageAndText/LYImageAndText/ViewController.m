//
//  ViewController.m
//  LYImageAndText
//
//  Created by mac on 16/8/20.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "ViewController.h"
#import "ShowViewController.h"
#import "SHAttributedString.h"

@interface ViewController () {
    
    UITextView *_textView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"输入一段富文本";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Show" style:UIBarButtonItemStyleDone target:self action:@selector(showAttributedString)];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(5, 100, self.view.bounds.size.width - 10, 200)];
    
    _textView.textContainerInset = UIEdgeInsetsZero;//上下左右均为 0
    _textView.textContainer.lineFragmentPadding = 0;
    
    _textView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:_textView];
}

- (void)showAttributedString {
    
    ShowViewController *showViewController = [[ShowViewController alloc] init];
    
//    showViewController.attributedString = [SHAttributedString attributedStringWithString:_textView.text andUrlStringName:@"百度首页" line:YES];
    
//    showViewController.attributedString = [SHAttributedString attributedStringWithAttString:_textView.attributedText andUrlStringName:@"百度首页" urlStr:@"www.baidu.com" line:YES];
    
//    showViewController.attributedString = [SHAttributedString attributedStringWithAttributedString:_textView.attributedText andColor:[UIColor redColor] font:[UIFont systemFontOfSize:17.0] range:NSMakeRange(0, _textView.attributedText.length)];
    
//    showViewController.attributedString = [SHAttributedString attributedStringWithAttributedString:_textView.attributedText insertImage:[UIImage imageNamed:@"test.jpg"] atIndex:2];
    
//    showViewController.attributedString = [SHAttributedString attributedPhoneStringWithString:_textView.attributedText insertImage:nil orPhoneNameString:nil isCall:YES];
    
    showViewController.attributedString = [SHAttributedString attributedEmailStringWithString:_textView.attributedText insertImage:nil orEmailNameString:nil];
    
    showViewController.size = [SHAttributedString attributedStringSizeWithAttString:showViewController.attributedString preinstallSize:CGSizeMake(self.view.bounds.size.width - 10, 1000)];
    
    [self.navigationController pushViewController:showViewController animated:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    
}

@end
