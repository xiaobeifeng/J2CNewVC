//
//  NEUJ2CNewVC.h
//  NeuLongTermCareInsurance
//
//  Created by zhoujian on 2022/8/17.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NEUJ2CNewVC : NSObject <WKScriptMessageHandler>

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
