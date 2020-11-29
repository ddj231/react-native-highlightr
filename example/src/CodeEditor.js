/*
import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent} from 'react-native';

export default class CodeEditorView extends React.Component {
    _onChangeText = (event) => {
        if(!this.props.onChangeText){
            return;
        }
        this.props.onChangeText(event.nativeEvent);
    }
   render(){
       return <RNTCodeEditor {...this.props} onChangeText={this._onChangeText}/>
   } 
}

//module.exports = requireNativeComponent("CodeEditor");
var RNTCodeEditor = requireNativeComponent("RNTCodeEditor");
*/