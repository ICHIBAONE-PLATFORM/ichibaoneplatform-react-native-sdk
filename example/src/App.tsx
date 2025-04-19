import {
  getFCMDeviceToken,
  getName,
  getVersion,
  initializeFCM,
} from 'ichibaoneplatform-react-native-sdk';
import { useEffect, useState } from 'react';
import { Button, StyleSheet, Text, View } from 'react-native';

export default function App() {
  const [deviceToken, setDeviceToken] = useState<string | null>(null);
  useEffect(() => {
    initializeFCM();
  }, []);
  return (
    <View style={styles.container}>
      <Text>Result: {getName()}</Text>
      <Text>Result: {getVersion()}</Text>
      <Text>Result: {deviceToken}</Text>
      <Button
        title="Initialize"
        onPress={async () => {
          const token = await getFCMDeviceToken();
          console.log(token);
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
