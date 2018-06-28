//
//  LoginInterfaceViewModelOBJ.m
//  shuhucgyabgxuobc
//
//  Created by mada on 2018/6/27.
//  Copyright © 2018年 mada. All rights reserved.
//

#import "LoginInterfaceViewModelOBJ.h"
#import "LoginInterfaceViewCellTableViewCell.h"
@implementation LoginInterfaceViewModelOBJ

- (id)initWithselfshu:(UIViewController*)shuju
{
    self = [super init];
    if (self)
    {
        _VCcell = shuju;
    }
    return self;
}

- (void)buttonAppearance:(LoginInterfaceViewCellTableViewCell*)Cell
{
    
    
    
    Cell.LogInBTNName.layer.cornerRadius = 3;//设置圆角弧度
    Cell.LogInBTNName.layer.masksToBounds = YES;//超出的部分截掉
    Cell.LogInBTNName.layer.borderWidth = 1;//设置圆角边框宽度
    Cell.LogInBTNName.layer.borderColor = ColorRGB(197, 197, 197, 1).CGColor;//设置圆角边框颜色层里边的
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"LoginInterfaceViewCellTableViewCell";//定义一个可重用标识
    LoginInterfaceViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];//获取可重用的cell
    if (!cell)
    {
        //如果不存在，创建一个可重用cell
        cell = [[[NSBundle mainBundle]loadNibNamed:@"TheHomePageOfTheLoginInterfacexib" owner:nil options:nil]firstObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    
    [self buttonAppearance:cell];
    
    [cell.Telnumber addTarget:self action:@selector(telephoneBtntel:) forControlEvents:UIControlEventTouchUpInside];
    
    [cell.PasswordInput addTarget:self action:@selector(telephoneBtnpass:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (void)jianpanyingyong
{

   [_add resignFirstResponder];
    _add = [AllTextfile shareTicket];
    [_add btnshendefangfa];
    _add.delegateccc = self;
     [[UIApplication sharedApplication].delegate.window removeGestureRecognizer:_tap];
    _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tabp)];
     [[UIApplication sharedApplication].delegate.window addGestureRecognizer:_tap];
   

    [_add becomeFirstResponder];
}

- (void)tabp
{

    [_add resignFirstResponder];
    
    [_add yichujianlpn];//移除键盘
    [[UIApplication sharedApplication].delegate.window removeGestureRecognizer:_tap];
}
-(void)food:(NSString *)foodMsg
{
    
    [self tabp];
    [_add yichujianlpn];//移除键盘

    [_addtext setTitle:foodMsg forState:UIControlStateNormal];

}
/**
 TODO:点击事件
 **/

- (void)telephoneBtntel:(UIButton*)butt
{
    NSLog(@"fhsdjkfd1111");
    
    _addtext = butt;
    [self jianpanyingyong];
     _add.text = butt.titleLabel.text;
}
- (void)telephoneBtnpass:(UIButton*)butt
{
    NSLog(@"fhsdjkfd");
   _addtext = butt;
    [self jianpanyingyong];
     _add.text = butt.titleLabel.text;
}






@end
