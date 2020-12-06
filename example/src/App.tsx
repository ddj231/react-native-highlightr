// @ts-nocheck

import * as React from 'react';
import { StyleSheet, View, Keyboard,KeyboardAvoidingView, TouchableWithoutFeedback } from 'react-native';
//import CodeEditorView from './CodeEditor';
import CodeEditorView from 'react-native-highlightr';

export default function App() {
  let [codeText, setCodeText] = React.useState("function hello_world(){}")
  let onChange = (text) => {
    console.log("text is", text)
    setCodeText(text)
  }

  function dismissKeyboard(){
    Keyboard.dismiss();
  }

  return (
    <View style={styles.container}>
    <TouchableWithoutFeedback onPress={dismissKeyboard}>
      <KeyboardAvoidingView
        behavior="padding"
        style={{flex: 1, justifyContent:"flex-end"}}
      >
      <CodeEditorView 
      value={codeText} 
      language={"Javascript"} 
      theme={"atom-one-dark"} 
      onChangeText={onChange} 
      keyboardAppearance={"dark"}
      style={{backgroundColor: "#000000", height: 300, width: 200}} 
      />
    </KeyboardAvoidingView>
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
