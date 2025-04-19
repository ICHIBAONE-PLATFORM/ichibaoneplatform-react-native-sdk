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
  
  @objc
  public func handleForegroundNotification(value: Bool) {
    PushNotificationManager.shared.handleForegroundNotification = value
  }
  
  @objc
  public func initializeFCM() {
    PushNotificationManagerFCM.shared.initialize()
    PushNotificationManagerFCM.shared.handleForegroundNotification = true
    PushNotificationManagerFCM.shared.registerForRemotePushNotification()
  }
  
  @objc
  public func getFCMDeviceToken(withResolver resolve: @escaping (String?) -> Void) {
    Task {
      let token = await PushNotificationManagerFCM.shared.getFcmToken()
      resolve(token)
    }
  }
}
