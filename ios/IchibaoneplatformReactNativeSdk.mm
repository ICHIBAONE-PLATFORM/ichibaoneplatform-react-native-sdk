#import "IchibaoneplatformReactNativeSdk.h"
#import "IchibaoneplatformReactNativeSdk-Swift.h"

@implementation IchibaoneplatformReactNativeSdk
RCT_EXPORT_MODULE()

static IchibaoneplatformReactNativeSdkImpl *ichibaoneplatformReactNativeSdkImpl = [IchibaoneplatformReactNativeSdkImpl new];

// Client feature
- (void) initializeClient:(NSString *)clientId clientSecret:(NSString *)clientSecret {
  [ichibaoneplatformReactNativeSdkImpl initializeClientWithClientId:clientId clientSecret:clientSecret];
}

- (void) identity:(NSString *)id body:(NSDictionary *)body {
  [ichibaoneplatformReactNativeSdkImpl identityWithId:id body:body];
}

- (void) clearIdentity {
  [ichibaoneplatformReactNativeSdkImpl clearIdentity];
}



//Push notification feature
- (void) initializeAPNS {
  [ichibaoneplatformReactNativeSdkImpl initializeAPNS];
}

- (void)initializeFCM {
  [ichibaoneplatformReactNativeSdkImpl initializeFCM];
}

- (NSString *) getDeviceToken {
  return [ichibaoneplatformReactNativeSdkImpl getDeviceToken];
}

- (void)getFCMDeviceToken:(nonnull RCTPromiseResolveBlock)resolve reject:(nonnull RCTPromiseRejectBlock)reject {
  [ichibaoneplatformReactNativeSdkImpl getFCMDeviceTokenWithResolver:^(NSString * _Nullable token) {
      if (token) {
        resolve(token);
      } else {
        reject(@"no_token", @"FCM token not available", nil);
      }
    }];
}

- (void) registerForRemoteNotifications {
  [ichibaoneplatformReactNativeSdkImpl registerForRemoteNotifications];
}

- (void) handleForegroundNotification:(BOOL)value {
  [ichibaoneplatformReactNativeSdkImpl handleForegroundNotificationWithValue:value];
}

- (void)onDeeplinkReceived:(nonnull RCTResponseSenderBlock)resolve {
  [ichibaoneplatformReactNativeSdkImpl onDeeplinkReceived:^(NSURL *url) {
      if (url) {
          resolve(@[url.absoluteString]);
      } else {
          resolve(@[]);
      }
  }];
}

- (void)showNotification:(nonnull NSString *)title body:(nonnull NSString *)body {
  [ichibaoneplatformReactNativeSdkImpl showNotifcationWithTitle:title body:body];
}


- (void)trackEvent:(nonnull NSString *)eventName body:(nonnull NSDictionary *)body {
  [ichibaoneplatformReactNativeSdkImpl trackEventWithEventName:eventName body:body];
}

- (void)requestPermission { 
  [ichibaoneplatformReactNativeSdkImpl requestPermission];
}


- (void)scheduleNotification:(nonnull NSString *)title body:(nonnull NSString *)body timeInterval:(double)timeInterval userInfo:(nonnull NSDictionary *)userInfo { 
  [ichibaoneplatformReactNativeSdkImpl scheduleNotificationWithTitle:title body:body timeInterval:timeInterval userInfo:userInfo];
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeIchibaoneplatformReactNativeSdkSpecJSI>(params);
}

@end
