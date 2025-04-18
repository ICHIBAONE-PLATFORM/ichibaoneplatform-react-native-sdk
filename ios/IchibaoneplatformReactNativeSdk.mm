#import "IchibaoneplatformReactNativeSdk.h"
#import "IchibaoneplatformReactNativeSdk-Swift.h"

@implementation IchibaoneplatformReactNativeSdk
RCT_EXPORT_MODULE()

static IchibaoneplatformReactNativeSdkImpl *ichibaoneplatformReactNativeSdkImpl = [IchibaoneplatformReactNativeSdkImpl new];

- (NSString *) getName {
  return [ichibaoneplatformReactNativeSdkImpl getName];
}

- (NSString *) getVersion {
  return [ichibaoneplatformReactNativeSdkImpl getVersion];
}

- (void) initialize {
  [ichibaoneplatformReactNativeSdkImpl initialize];
}

- (void) registerForRemoteNotifications {
  [ichibaoneplatformReactNativeSdkImpl registerForRemoteNotifications];
}

- (NSString *) getDeviceToken {
  return [ichibaoneplatformReactNativeSdkImpl getDeviceToken];
}

- (void) handleForegroundNotification:(BOOL)value {
  [ichibaoneplatformReactNativeSdkImpl handleForegroundNotificationWithValue:value];
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeIchibaoneplatformReactNativeSdkSpecJSI>(params);
}

@end
