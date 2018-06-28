//
//  LoginInterfaceVCdenglu.m
//  shuhucgyabgxuobc
//
//  Created by mada on 2018/6/27.
//  Copyright © 2018年 mada. All rights reserved.
//

#import "LoginInterfaceVCdenglu.h"
#import "LoginInterfaceViewTaView.h"


@interface LoginInterfaceVCdenglu ()

@end

@implementation LoginInterfaceVCdenglu

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    LoginInterfaceViewTaView * LoginInterfaceView = [[LoginInterfaceViewTaView alloc]initWithFrame:CGRectMake(0, 0, currencyRect.size.width, currencyRect.size.height) selfshu:self];
    
    [self.view addSubview:LoginInterfaceView];
  

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
