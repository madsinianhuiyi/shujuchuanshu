//
//  LoginInterfaceViewTaView.m
//  shuhucgyabgxuobc
//
//  Created by mada on 2018/6/27.
//  Copyright © 2018年 mada. All rights reserved.
//

#import "LoginInterfaceViewTaView.h"
#import "LoginInterfaceViewCellTableViewCell.h"

@implementation LoginInterfaceViewTaView
- (id)initWithFrame:(CGRect)frame selfshu:(UIViewController*)shuju;
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        
        self.tableview = shuju;
        self.backgroundColor = [UIColor whiteColor];
        [self tableviewObj];
        
       
    }
    return self;
    
}

- (void)tableviewObj
{
    
    _table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, currencyRect.size.width, currencyRect.size.height) style:UITableViewStylePlain];
    _table.delegate = self;
    _table.dataSource = self;
    _table.separatorStyle = UITableViewCellSeparatorStyleNone;
    _table.backgroundColor = [UIColor whiteColor];
    [self addSubview:_table];
    
    /**
     TODO:viewmodel
     **/
    _tableviewobj = [[LoginInterfaceViewModelOBJ alloc ] initWithselfshu:self.tableview];
    
    
   
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return currencyRect.size.height;
   
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    

    
    
     LoginInterfaceViewCellTableViewCell * cell = (LoginInterfaceViewCellTableViewCell * )[_tableviewobj tableView:tableView cellForRowAtIndexPath:indexPath];
    
//
  

    
    return cell;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
