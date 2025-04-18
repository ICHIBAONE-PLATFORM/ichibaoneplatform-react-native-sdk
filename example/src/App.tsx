import {
  getDeviceToken,
  getName,
  getVersion,
  handleForegroundNotification,
  initialize,
  registerForRemoteNotifications,
} from 'ichibaoneplatform-react-native-sdk';
import { useEffect, useState } from 'react';
import { Button, StyleSheet, Text, View } from 'react-native';

export default function App() {
  const [deviceToken, setDeviceToken] = useState<string | null>(null);
  useEffect(() => {
    initialize();
    registerForRemoteNotifications();
    handleForegroundNotification(true);
  }, []);
  return (
    <View style={styles.container}>
      <Text>Result: {getName()}</Text>
      <Text>Result: {getVersion()}</Text>
      <Text>Result: {deviceToken}</Text>
      <Button
        title="Initialize"
        onPress={() => {
          registerForRemoteNotifications();
          const token = getDeviceToken();
          setDeviceToken(token);
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
