import { Text, View, StyleSheet } from 'react-native';
import {
  getName,
  getVersion,
  multiply,
} from 'ichibaoneplatform-react-native-sdk';

const result = multiply(3, 7);

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
      <Text>Result: {getName()}</Text>
      <Text>Result: {getVersion()}</Text>
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
