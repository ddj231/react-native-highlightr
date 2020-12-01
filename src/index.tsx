// @ts-nocheck

import React from 'react';
import {requireNativeComponent} from 'react-native';

export default class CodeEditorView extends React.Component {
    _onChangeText = (event) => {
        if(!this.props.onChangeText){
            return;
        }
        this.props.onChangeText(event.nativeEvent.text);
    }

    _onPress = () => {
        if(!this.props.onPress){
            return;
        }
        this.props.onPress();
    }
   render(){
       return <RNTCodeEditor {...this.props} onChangeText={this._onChangeText} onPress={this._onPress}/>
   } 
}
//module.exports = requireNativeComponent("CodeEditor");
var RNTCodeEditor = requireNativeComponent("RNTCodeEditor");