# react-native-highlightr

a code editor component for react native -- this component is a wrapper of Highlightr

## Installation

```sh
npm install react-native-highlightr

cd ios

pod install
```

## Usage

```js
import HighlightrView from 'react-native-highlightr'
...
<HighlightrView language={"Swift"} theme={"atom-one-dark"} value={"func helloWorld(){}"} onChangeText={someFunc}/>
```

### Props (more formal documentation coming soon)

*see [highlightrjs](https://highlightjs.org) for availabe languages and themes*

* **language** - *type*: String,  *description*: the name of the coding language to be highlighted
* **theme** - *type*: String, *description*: theme for syntax highlighing
* **value** - *type*: String, *description*: a string value for the code editor view (mirrors text input value prop usagae)
* **editable** - *type*: Boolean, *description*: a boolean to toggle whether the highlightr view's text is editable (if false, keyboard is disabled) 
* **onChangeText** - *type*: Function, *description*: a callback function that has the current string value of the highlightr view passed in 
* **onPress** - *type*: Function, *description*: a callback function called whenever the highlightr view is pressed 

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
