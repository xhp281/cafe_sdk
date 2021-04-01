//
//  CafeManager.m
//  cafe_sdk
//
//  Created by xuhaipeng on 2021/3/18.
//

#import "CafeManager.h"
#import <NaverCafeSDK/NCSDKManager.h>
#import <NaverCafeSDK/NCSDKLoginManager.h>
#import <NaverCafeSDK/NCSDKLanguage.h>

@interface CafeManager()<NCSDKManagerDelegate>

@end

@implementation CafeManager

+ (NSString *)version{
    return [NCSDKManager getSharedInstance].sdkVersion;
}

+ (void)setNaverLoginClientId:(NSString *)clientId
       naverLoginClientSecret:(NSString *)clientSecret
                    urlScheme:(NSString *)urlScheme
                       cafeId:(NSInteger)cafeId
                  isLandscape:(BOOL)isLandscape {
    [[NCSDKManager getSharedInstance] setNaverLoginClientId:clientId
                                     naverLoginClientSecret:clientSecret
                                                     cafeId:cafeId];
    [[NCSDKLoginManager getSharedInstance] setNaverLoginURLScheme: urlScheme];
    [[NCSDKManager getSharedInstance] setChannelCode: KOREAN];
    // 设置方向
    [[NCSDKManager getSharedInstance] setOrientationIsLandscape:isLandscape];
}

-  (void)openCafeMainViewController:(UIViewController *)controller {
    [[NCSDKManager getSharedInstance] setParentViewController:controller];
    [[NCSDKManager getSharedInstance] setNcSDKDelegate:self];
    [[NCSDKManager getSharedInstance] setUseWidgetScreenShot:NO];   // 关闭截屏
    [[NCSDKManager getSharedInstance] setUseWidgetVideoRecord:NO];  // 关闭录制
    [[NCSDKManager getSharedInstance] presentMainViewController];
}

+ (BOOL)finishNaverLoginWithURL:(NSURL *)url {
    return [[NCSDKLoginManager getSharedInstance] finishNaverLoginWithURL:url];
}

#pragma mark - NCSDKManagerDelegate
- (void)ncSDKViewDidLoad {
    NSLog(@"ncSDKViewDidLoad");
}

- (void)ncSDKViewDidUnLoad {
    NSLog(@"ncSDKViewDidUnLoad");
}

- (void)ncSDKJoinedCafeMember {
    NSLog(@"Complete To Join Cafe");
}

- (void)ncSDKPostedArticleAtMenu:(NSInteger)menuId
                attachImageCount:(NSInteger)imageCount
                attachVideoCount:(NSInteger)videoCount {
    NSLog(@"Complete To Write, Menu ID[%@]", @(menuId));
}

- (void)ncSDKPostedCommentAtArticle:(NSInteger)articleId {
    NSLog(@"Complete Comment, Article ID[%@]", @(articleId));
}

- (void)ncSDKRequestScreenShot {
    
}

- (void)ncSDKDidVoteAtArticle:(NSInteger)articleId {
    NSLog(@"Complete to vote, Article ID[%@]", @(articleId));
}

- (void)ncSDKWidgetPostArticleWithImage {
}

- (void)ncSDKWidgetSuccessVideoRecord {
}

- (void)ncSDKAppSchemeBanner:(NSString *)appScheme {
    NSLog(@"ncSDKAppSchemeBanner %@", appScheme);
}

- (void)ncSDKDidEndWatchingLiveSeconds:(NSInteger)seconds {
    NSLog(@"ncSDKDidEndWatchingLiveSeconds %@", @(seconds));
}
@end
