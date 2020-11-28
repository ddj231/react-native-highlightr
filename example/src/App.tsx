import * as React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import CodeEditor from './CodeEditor';

export default function App() {

  return (
    <View style={styles.container}>
      <CodeEditor language={"Swift"} theme={"atom-one-dark"} style={{backgroundColor: "#000000", height: 300, width: 200}} />
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
