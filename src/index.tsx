import IchibaoneplatformReactNativeSdk from './NativeIchibaoneplatformReactNativeSdk';

export function multiply(a: number, b: number): number {
  return IchibaoneplatformReactNativeSdk.multiply(a, b);
}

export function getName(): string {
  return IchibaoneplatformReactNativeSdk.getName();
}

export function getVersion(): string {
  return IchibaoneplatformReactNativeSdk.getVersion();
}
