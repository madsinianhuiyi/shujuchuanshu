//
//  AllTextfile.m
//  jianpan
//
//  Created by mada on 2017/9/11.
//  Copyright © 2017年 mada. All rights reserved.
//

#import "AllTextfile.h"
#import "AppDelegate.h"
static AllTextfile *g_ticketCollector = nil;//声明一个全局静态对象
@implementation AllTextfile



+ (AllTextfile*)shareTicket
{
    @synchronized(self){//@synchronized是同步的意思，目的是防止多个线程同时访问
        if(g_ticketCollector == nil){
            g_ticketCollector = [[self alloc] init];
            [[UIApplication sharedApplication].delegate.window addSubview:g_ticketCollector];
//            [[UIApplication sharedApplication].keyWindow addSubview:g_ticketCollector];
//
//            [[UIApplication sharedApplication].keyWindow addSubview:g_ticketCollector];
        }
    }
    return g_ticketCollector;
    
    //被检测改变   监测者得到信息
}
- (void)btnshendefangfa
{
    [super setDelegate:self];
    
    self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 40);
     //self.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 40);
    self.backgroundColor = [UIColor grayColor];
    
   
      [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardNotification:) name:UIKeyboardWillChangeFrameNotification object:nil];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始输入...");
   
}
- (void)yichujianlpn
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillChangeFrameNotification object:nil];
}
//输入结束时调用
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"输入结束...");
    self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 40);

}

//文本改变时调用
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"%@", textField.text);//文本变化内容
    return YES;
}

//点击了clear键时调用
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    NSLog(@"clear button被点击了...");
    return YES;
}

//点击return键时调用的方法
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"return键点击了...");
    
    [textField resignFirstResponder];//辞去第一响应
    
    
    if (self.delegateccc && [self.delegateccc respondsToSelector:@selector(food:)])
    {
        [self.delegateccc food:textField.text];
    }

    return YES;
}
- (void)keyboardNotification:(NSNotification *)notification
{
    NSDictionary *dict = notification.userInfo;
    CGRect rect = [dict[@"UIKeyboardFrameEndUserInfoKey"] CGRectValue];
    
    
    
    CGRect textFieldRect = CGRectMake(0, rect.origin.y - 40, rect.size.width, 40);
    if (rect.origin.y == [UIScreen mainScreen].bounds.size.height) {
        self.frame = rect;
    }
    
    [UIView animateWithDuration:0.25 animations:^{
        self.frame = textFieldRect;
    }];
    
//    CGFloat h = rect.size.height + textFieldH;
//    if (_totalKeybordHeight != h) {
//        _totalKeybordHeight = h;
//        [self adjustTableViewToFitKeyboard];
//    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
