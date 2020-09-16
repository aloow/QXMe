//
//  QXMeLoad.m
//  MGJRouter
//
//  Created by iMac on 2020/9/16.
//

#import "QXMeLoad.h"
#import <MGJRouter/MGJRouter.h>
#import "QXMePublicHeader.h"
#import "QXMeController.h"

@implementation QXMeLoad

+ (void)load {
    
    [MGJRouter registerURLPattern:QXMeHomeController
                        toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        // block
        void(^block)(NSString *) = routerParameters[MGJRouterParameterUserInfo][@"block"];
        NSString *title = routerParameters[MGJRouterParameterUserInfo][@"title"];
       
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        
        QXMeController *homeController = [[QXMeController alloc]
                                                            initWithNibName:@"QXMeController"
                                                            bundle:bundle];
        homeController.title = title;
        
        [navigationVC pushViewController:homeController animated:YES];
        
    }];
    
    
    [MGJRouter registerURLPattern:GetQXMeHomeController toObjectHandler:^id(NSDictionary *routerParameters) {
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        QXMeController *homeController = [[QXMeController alloc]
                                                            initWithNibName:@"QXMeController"
                                                            bundle:bundle];
        return homeController;
    }];
    
    
}

@end
