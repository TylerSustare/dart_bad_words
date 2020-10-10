# bad_words

A dart filter for English bad words.

## Installation

```yaml
bad_words: ^0.2.2
```

## Usage

```dart
import 'package:bad_words/bad_words.dart';

if (Filter.isProfane('some string to test')) {
    // ... validation error etc.
}

// clean up a profane string
final cleanString = Filter.clean('some test string');
```
