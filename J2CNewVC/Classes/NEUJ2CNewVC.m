//
//  NEUJ2CNewVC.m
//  NeuLongTermCareInsurance
//
//  Created by zhoujian on 2022/8/17.
//

#import "NEUJ2CNewVC.h"
#import "NEUNewViewController.h"

@implementation NEUJ2CNewVC

+ (instancetype)shareInstance {
    static NEUJ2CNewVC *instance = nil ;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            if (instance == nil) {
                instance = [[NEUJ2CNewVC alloc] init];
            }
        });
        return instance;
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    NSLog(@"%@", message.name);
    NSLog(@"%@", message.body);
    
    NEUNewViewController *newViewController = [NEUNewViewController new];
    [[NEUJ2CNewVC shareInstance].webViewController presentViewController:newViewController animated:YES completion:nil];
}

@end
