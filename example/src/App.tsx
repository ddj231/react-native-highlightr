import * as React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import CodeEditor from './CodeEditor';

export default function App() {

  return (
    <View style={styles.container}>
      <CodeEditor language={"Swift"} height={100} width={100} style={{backgroundColor: "#FF0000", height: 300, width: 200}} />
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
