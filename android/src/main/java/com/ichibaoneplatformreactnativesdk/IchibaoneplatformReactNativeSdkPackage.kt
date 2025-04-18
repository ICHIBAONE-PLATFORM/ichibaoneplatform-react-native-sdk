package com.ichibaoneplatformreactnativesdk

import com.facebook.react.BaseReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.module.model.ReactModuleInfo
import com.facebook.react.module.model.ReactModuleInfoProvider
import java.util.HashMap

class IchibaoneplatformReactNativeSdkPackage : BaseReactPackage() {
  override fun getModule(name: String, reactContext: ReactApplicationContext): NativeModule? {
    return if (name == IchibaoneplatformReactNativeSdkModule.NAME) {
      IchibaoneplatformReactNativeSdkModule(reactContext)
    } else {
      null
    }
  }

  override fun getReactModuleInfoProvider(): ReactModuleInfoProvider {
    return ReactModuleInfoProvider {
      val moduleInfos: MutableMap<String, ReactModuleInfo> = HashMap()
      moduleInfos[IchibaoneplatformReactNativeSdkModule.NAME] = ReactModuleInfo(
        IchibaoneplatformReactNativeSdkModule.NAME,
        IchibaoneplatformReactNativeSdkModule.NAME,
        false,  // canOverrideExistingModule
        false,  // needsEagerInit
        false,  // isCxxModule
        true // isTurboModule
      )
      moduleInfos
    }
  }
}
