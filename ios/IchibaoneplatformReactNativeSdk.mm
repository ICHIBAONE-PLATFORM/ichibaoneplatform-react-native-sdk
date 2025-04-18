#import "IchibaoneplatformReactNativeSdk.h"
#import "IchibaoneplatformReactNativeSdk-Swift.h"

@implementation IchibaoneplatformReactNativeSdk
RCT_EXPORT_MODULE()

static IchibaoneplatformReactNativeSdkImpl *ichibaoneplatformReactNativeSdkImpl = [IchibaoneplatformReactNativeSdkImpl new];

- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(a * b);

    return result;
}

- (NSString *) getName {
  return [ichibaoneplatformReactNativeSdkImpl getName];
}

- (NSString *) getVersion {
  return [ichibaoneplatformReactNativeSdkImpl getVersion];
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeIchibaoneplatformReactNativeSdkSpecJSI>(params);
}

@end
