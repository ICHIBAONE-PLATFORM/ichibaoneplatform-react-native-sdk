import ichibaoneplatform_ios_sdk

@objcMembers
public class IchibaoneplatformReactNativeSdkImpl: NSObject {
  @objc
  public func getName() -> String {
    return "IChiba"
  }
  
  @objc
  public func getVersion() -> String {
    return "1.0.0"
  }
  
  @objc
  public func initialize() {
    PushNotificationManager.shared.initialize()
  }
  
  @objc
  public func registerForRemoteNotifications() {
    PushNotificationManager.shared.registerForRemotePushNotification()
  }
  
  @objc
  public func getDeviceToken() -> String? {
    return PushNotificationManager.shared.getDeviceToken()
  }
}
