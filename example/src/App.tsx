import {
  getFCMDeviceToken,
  initializeClient,
  registerForRemoteNotifications,
} from 'ichibaoneplatform-react-native-sdk';
import { useEffect, useState } from 'react';
import { Button, StyleSheet, Text, View } from 'react-native';

export default function App() {
  const [deviceToken, setDeviceToken] = useState<string | null>(null);
  useEffect(() => {
    initializeClient('clientid', 'clientsecret', false);
    registerForRemoteNotifications();
  }, []);
  return (
    <View style={styles.container}>
      <Text>Result: {deviceToken}</Text>
      <Button
        title="Initialize"
        onPress={async () => {
          const token = await getFCMDeviceToken();
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
