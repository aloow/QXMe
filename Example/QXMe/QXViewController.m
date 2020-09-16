//
//  QXViewController.m
//  QXMe
//
//  Created by aloow on 09/16/2020.
//  Copyright (c) 2020 aloow. All rights reserved.
//

#import "QXViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface QXViewController ()

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 个人中心
- (IBAction)toMeController:(id)sender {
    
    // MARK: 方式1
    // 参数回调
    void (^myBlock)(NSString*) = ^(NSString *text)
    {
       NSLog(@"%@",text);
    };
    // 传参
    NSString *title = @"会员首页";

    NSDictionary *dic = @{
        @"navigationVC":self.navigationController,
        @"title":title,
        @"block":myBlock
    };
    [MGJRouter openURL:@"QXMe://Me/home" withUserInfo:dic completion:^(id result) {
        // 跳转后的回调
        NSLog(@"completion");
    }];
        
        
        // MARK: 方式2
        // 根据url获取controller对象，然后跳转
//        UIViewController *targetController = [MGJRouter objectForURL:@"QXMe://Me/Gethome"];
//        [self.navigationController pushViewController:targetController animated:true];
    
}

@end
