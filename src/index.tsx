import { NativeModules } from 'react-native';

type CodeEditorType = {
  multiply(a: number, b: number): Promise<number>;
};

const { CodeEditor } = NativeModules;

export default CodeEditor as CodeEditorType;
