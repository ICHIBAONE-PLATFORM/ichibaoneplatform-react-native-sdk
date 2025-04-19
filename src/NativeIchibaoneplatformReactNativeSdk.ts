import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  getFCMDeviceToken: () => Promise<string>;

  getName(): string;

  getVersion(): string;

  initialize(): void;

  registerForRemoteNotifications(): void;

  getDeviceToken(): string;

  handleForegroundNotification(value: boolean): void;

  initializeFCM(): void;
}

export default TurboModuleRegistry.getEnforcing<Spec>(
  'IchibaoneplatformReactNativeSdk'
);
