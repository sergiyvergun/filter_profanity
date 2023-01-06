# filter_profanity
# 🤬
[![pub points](https://img.shields.io/pub/points/filter_profanity?color=2E8B57&label=pub%20points)](https://pub.dev/packages/filter_profanity/score) [![pub package](https://img.shields.io/pub/v/filter_profanity.svg)](https://pub.dev/packages/filter_profanity)

##### Dart package to recognize if provided string contains offensive words.


🌐 Supported languages:
- Arabic
- Chinese
- Czech
- Danish
- Dutch
- English
- Filipino
- French
- Frisian
- German
- Hindi
- Hungarian
- Italian
- Japanese
- Korean
- Norwegian
- Oromo
- Persian
- Polish
- Portuguese
- Russian
- Spanish
- Swedish
- Thai
- Turkish
- Ukrainian

### Usage
------------
✅ Import package
```dart
import 'package:filter_profanity/filter_profanity.dart';
```
🤬 Check if text has offensive words
```dart
hasProfanity('putin') // returns true
hasProfanity('Hello') // returns false
```
🇬🇧 Set language
```dart
hasProfanity('putin', languagesOffensiveWords: englishOffensiveWords) // returns true
```
🇺🇦 🇬🇧 Set languages
```dart
hasProfanity('putin', offensiveWordsLanguages: ukrainianOffensiveWords +  englishOffensiveWords) // returns true
```

### MIT License
------------
    Copyright (c) 2023 Sergiy
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

