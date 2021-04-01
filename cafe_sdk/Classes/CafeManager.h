//
//  CafeManager.h
//  cafe_sdk
//
//  Created by xuhaipeng on 2021/3/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CafeManager : NSObject

/**
 获取版本号
 */
+ (NSString *)version;

/**
 初始化社区SDK
 naverLoginClientId :     Naver ID Login ClientId
 naverLoginClientSecret : Naver ID Login ClientSecret
 cafeId : NaverCafe ID
 urlScheme : urlScheme
 isLandscape: 是不是横屏
 */
+ (void)setNaverLoginClientId:(NSString *)clientId
       naverLoginClientSecret:(NSString *)clientSecret
                    urlScheme:(NSString *)urlScheme
                       cafeId:(NSInteger)cafeId
                  isLandscape:(BOOL)isLandscape;

/**
 打开社区首页
 */
- (void)openCafeMainViewController:(UIViewController *)controller;

/**
 AppDelegate URL Scheme
 */
+ (BOOL)finishNaverLoginWithURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
