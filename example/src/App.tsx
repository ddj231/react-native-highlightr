// @ts-nocheck

import * as React from 'react';
import { StyleSheet, View, Keyboard, TouchableWithoutFeedback } from 'react-native';
//import CodeEditorView from './CodeEditor';
import CodeEditorView from 'react-native-highlightr';

export default function App() {
  let onChange = (event) => {
    console.log(event.text)
  }

  function dismissKeyboard(){
    Keyboard.dismiss();
  }

  return (
    <View style={styles.container}>
    <TouchableWithoutFeedback onPress={dismissKeyboard}>
      <CodeEditorView 
      value={'@objc func hello world(){\n\tprint("hi remote collab")\n}'} 
      language={"Swift"} 
      theme={"atom-one-dark"} 
      onChangeText={onChange} 
      style={{backgroundColor: "#000000", height: 300, width: 200}} 
      />
    </TouchableWithoutFeedback>
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
