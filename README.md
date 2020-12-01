# react-native-highlightr

a code editor component for react native -- this component is a wrapper of Highlightr

## Installation

```sh
npm install react-native-highlightr
```

## Usage

```js
import CodeEditorView from 'react-native-highlightr'

<CodeEditorView language={"Swift"} theme={"atom-one-dark"} value={"func helloWorld(){}"} onChangeText={someFunc}/>
```

### Props (more formal documentation coming soon)
*see [highlightrjs](https://highlightjs.org) for availabe languages and themes*
language - type: String,  description: the name of the coding language to be highlighted
theme - type: String, description: theme for syntax highlighing
value - type: String, description: a string value for the code editor view (mirrors text input value prop usagae)
onChangeText - type: String []

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
