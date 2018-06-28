//
//  AllTextfile.h
//  jianpan
//
//  Created by mada on 2017/9/11.
//  Copyright © 2017年 mada. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AllTextfileDelegate <NSObject> //协议名＝类名＋Delegate

//协议必须实现的方法
@required
- (void)food:(NSString*)foodMsg;




@end

@interface AllTextfile : UITextField<UITextFieldDelegate>

@property (nonatomic, assign) id<AllTextfileDelegate> delegateccc;


+ (AllTextfile*)shareTicket;
- (void)btnshendefangfa;
- (void)yichujianlpn;
@end
