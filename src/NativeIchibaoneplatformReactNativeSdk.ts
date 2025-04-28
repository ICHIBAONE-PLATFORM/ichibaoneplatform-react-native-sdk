import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  /* Client feature */
  initializeClient: (clientId: string, clientSecret: string) => void;
  identity: (id: string, body: Object) => void;
  clearIdentity: () => void;

  /* Push notification feature */
  initializeAPNS: () => void;
  initializeFCM: () => void;
  getDeviceToken: () => string;
  getFCMDeviceToken: () => Promise<string>;
  onDeeplinkReceived: (callback: (url: string) => void) => void;
  handleForegroundNotification: (value: boolean) => void;
  registerForRemoteNotifications: () => void;

  /* In-app message */
  showNotification: (title: string, body: string) => void;

  /* Tracking event */
  trackEvent: (eventName: string, body: Object) => void;

  /* Local notification feature */
  requestPermission: () => void;
  scheduleNotification: (
    title: string,
    body: string,
    timeInterval: number,
    userInfo?: Object
  ) => void;
}

export default TurboModuleRegistry.getEnforcing<Spec>(
  'IchibaoneplatformReactNativeSdk'
);
