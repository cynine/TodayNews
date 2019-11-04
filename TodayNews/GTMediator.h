//
//  GTMediator.h
//  TodayNews
//
//  Created by Ray on 2019/11/4.
//  Copyright © 2019 cynine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GTDetailViewControllerProtocol <NSObject>

- (__kindof UIViewController *)detailViewControllerWithUrl:(NSString *)detailUrl; 

@end

@interface GTMediator : NSObject

// target action
+ (__kindof UIViewController *)detailViewControllerWithUrl:(NSString *)detailUrl;

// urlschme
typedef void(^GTMediatorProcessBlock)(NSDictionary *param);
+ (void)registerScheme:(NSString *)scheme processBlock:(GTMediatorProcessBlock)processBlock;
+ (void)openUrl:(NSString *)url params: (NSDictionary *)params;

// protocl class
+ (void)registerProtocl:(Protocol *)proto class: (Class)cls;
+ (Class)classForProtocl:(Protocol *)proto;
@end

NS_ASSUME_NONNULL_END
