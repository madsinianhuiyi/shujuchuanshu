//
//  LoginInterfaceViewModelOBJ.h
//  shuhucgyabgxuobc
//
//  Created by mada on 2018/6/27.
//  Copyright © 2018年 mada. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "LoginInterfaceViewCellTableViewCell.h"
@interface LoginInterfaceViewModelOBJ : NSObject<AllTextfileDelegate>
@property(nonatomic ,retain)UITapGestureRecognizer*tap;//键盘手饰
@property(nonatomic ,retain)UIViewController*VCcell;
@property(nonatomic ,retain)AllTextfile*add;//键盘

@property(nonatomic ,retain)UIButton*addtext;//键盘but
- (void)jianpanyingyong;//键盘应用
- (id)initWithselfshu:(UIViewController*)shuju;
- (void)buttonAppearance:(LoginInterfaceViewCellTableViewCell*)Cell;//按钮处理

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
@end
