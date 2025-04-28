import ichibaoneplatform_ios_sdk

@objcMembers
public class IchibaoneplatformReactNativeSdkImpl: NSObject{
  
  @objc
  public func initializeClient(clientId: String, clientSecret: String) {
    IchibaoneplatformSdk.clientManager.initialize(clientId: clientId, clientSecret: clientSecret)
  }
  
  @objc
  public func identity(id: String, body: [String:Any]) {
    IchibaoneplatformSdk.clientManager.identity(id: id, body: body)
  }
  
  @objc
  public func clearIdentity() {
    IchibaoneplatformSdk.clientManager.clearIdentity()
  }
  
  @objc
  public func initializeAPNS() {
    IchibaoneplatformSdk.pushNotificationManager.initialize()
  }
  
  @objc
  public func initializeFCM() {
    IchibaoneplatformSdkFCM.pushNotificationManagerFCM.initialize()
  }
  
  @objc
  public func registerForRemoteNotifications() {
    if(IchibaoneplatformCore.isFCMEnabled) {
      IchibaoneplatformSdk.pushNotificationManager.registerForRemotePushNotification()
    } else {
      IchibaoneplatformSdkFCM.pushNotificationManagerFCM.registerForRemotePushNotification()
    }
  }
  
  @objc
  public func getDeviceToken() -> String? {
    return IchibaoneplatformSdk.pushNotificationManager.getDeviceToken()
  }
  
  @objc
  public func handleForegroundNotification(value: Bool) {
    if(IchibaoneplatformCore.isFCMEnabled) {
      IchibaoneplatformSdkFCM.pushNotificationManagerFCM.handleForegroundNotification = value
    } else {
      IchibaoneplatformSdk.pushNotificationManager.handleForegroundNotification = value
    }
  }
  
  @objc
  public func getFCMDeviceToken(withResolver resolve: @escaping (String?) -> Void) {
    Task {
      let token = await PushNotificationManagerFCM.shared.getFcmToken()
      resolve(token)
    }
  }
  

  @objc
  public func onDeeplinkReceived(_ handler: @escaping (URL) -> Void) {
    if(IchibaoneplatformCore.isFCMEnabled) {
      IchibaoneplatformSdkFCM.pushNotificationManagerFCM.onDeeplinkReceived(handler)
    } else {
      IchibaoneplatformSdk.pushNotificationManager.onDeeplinkReceived(handler)
    }
  }
  
  @objc
  public func showNotifcation(title: String, body: String) {
    IchibaoneplatformCore.inAppNotificationManager.showNotification(title: title, message: body)
  }
  
  @objc
  public func trackEvent(eventName: String, body: [String:Any]) {
    IchibaoneplatformCore.trackEvent.trackingEvent(name: eventName, properties: body)
  }
  
  @objc
  public func requestPermission() {
    IchibaoneplatformCore.localNotificationManager.requestPermission()
  }
  
  @objc
  public func scheduleNotification(title: String,
                                         body: String,
                                         timeInterval: TimeInterval = 0.1,
                                         userInfo: [String: Any]? = nil) {
    IchibaoneplatformCore.localNotificationManager.scheduleNotification(title: title, body: body, timeInterval: timeInterval, userInfo: userInfo)
  }
}
