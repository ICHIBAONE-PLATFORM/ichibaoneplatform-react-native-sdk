import { Platform } from 'react-native';
import IchibaoneplatformReactNativeSdk from './NativeIchibaoneplatformReactNativeSdk';

export function initializeClient(
  clientId: string,
  clientSecret: string,
  isAPNS: boolean
): void {
  IchibaoneplatformReactNativeSdk.initializeClient(clientId, clientSecret);
  if (isAPNS && Platform.OS === 'ios') {
    IchibaoneplatformReactNativeSdk.initializeAPNS();
  } else {
    IchibaoneplatformReactNativeSdk.initializeFCM();
  }
}

export function identity(id: string, body: { [key: string]: any }): void {
  IchibaoneplatformReactNativeSdk.identity(id, body);
}

export function clearIdentity(): void {
  IchibaoneplatformReactNativeSdk.clearIdentity();
}

export function getDeviceToken(): string {
  return IchibaoneplatformReactNativeSdk.getDeviceToken();
}

export async function getFCMDeviceToken(): Promise<string> {
  return await IchibaoneplatformReactNativeSdk.getFCMDeviceToken();
}

export function handleForegroundNotification(value: boolean): void {
  IchibaoneplatformReactNativeSdk.handleForegroundNotification(value);
}

export function registerForRemoteNotifications(): void {
  IchibaoneplatformReactNativeSdk.registerForRemoteNotifications();
}

/* In app message */
export function showNotification(title: string, body: string): void {
  IchibaoneplatformReactNativeSdk.showNotification(title, body);
}

/* Tracking event */
export function trackEvent(
  eventName: string,
  body: { [key: string]: any }
): void {
  IchibaoneplatformReactNativeSdk.trackEvent(eventName, body);
}

/* Local notification feature */
export function requestPermission(): void {
  IchibaoneplatformReactNativeSdk.requestPermission();
}

export function scheduleNotification(
  title: string,
  body: string,
  userInfo?: { [key: string]: any }
): void {
  IchibaoneplatformReactNativeSdk.scheduleNotification(
    title,
    body,
    0.1,
    userInfo
  );
}
