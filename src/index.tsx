import IchibaoneplatformReactNativeSdk from './NativeIchibaoneplatformReactNativeSdk';

export function getName(): string {
  return IchibaoneplatformReactNativeSdk.getName();
}

export function getVersion(): string {
  return IchibaoneplatformReactNativeSdk.getVersion();
}

export function initialize(): void {
  IchibaoneplatformReactNativeSdk.initialize();
}

export function registerForRemoteNotifications(): void {
  IchibaoneplatformReactNativeSdk.registerForRemoteNotifications();
}

export function getDeviceToken(): string {
  return IchibaoneplatformReactNativeSdk.getDeviceToken();
}

export function handleForegroundNotification(value: boolean): void {
  IchibaoneplatformReactNativeSdk.handleForegroundNotification(value);
}
