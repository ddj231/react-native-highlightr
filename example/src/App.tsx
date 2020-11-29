import * as React from 'react';
import { StyleSheet, View, Keyboard, TouchableWithoutFeedback } from 'react-native';
import CodeEditorView from './CodeEditor';
//import CodeEditorView from 'react-native-code-editor';

export default function App() {
  let onChange = (event) => {
    console.log(event.text)
  }
  return (
    <TouchableWithoutFeedback onPress={Keyboard.dismiss}>
    <View style={styles.container}>
      <CodeEditorView value={'func hello world(){\n\tprint("hi remote collab")\n}'} language={"Swift"} theme={"atom-one-dark"} onChangeText={onChange} style={{backgroundColor: "#000000", height: 300, width: 200}} />
    </View>
    </TouchableWithoutFeedback>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
