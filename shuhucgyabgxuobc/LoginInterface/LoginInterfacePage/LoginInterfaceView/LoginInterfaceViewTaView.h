//
//  LoginInterfaceViewTaView.h
//  shuhucgyabgxuobc
//
//  Created by mada on 2018/6/27.
//  Copyright © 2018年 mada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginInterfaceViewTaView : UIView<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic ,retain)UITableView*table;
@property(nonatomic ,retain)UIViewController*tableview;
@property(nonatomic ,retain)LoginInterfaceViewModelOBJ*tableviewobj;



- (id)initWithFrame:(CGRect)frame selfshu:(UIViewController*)shuju;

@end
