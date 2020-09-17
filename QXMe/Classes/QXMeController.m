//
//  QXMeController.m
//  Pods-QXMe_Example
//
//  Created by iMac on 2020/9/16.
//

#import "QXMeController.h"
#import <MGJRouter/MGJRouter.h>

@interface QXMeController ()

@end

@implementation QXMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)toVIPTap:(id)sender {
    
    UIViewController *targetController = [MGJRouter objectForURL:@"QXVIP://MembersNot/getHome"];
    [self presentViewController:targetController animated:true completion:nil];
    
}

@end
