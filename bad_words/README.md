# bad_words

A dart filter for English bad words.

## Installation

```yaml
bad_words: ^0.2.0
```

## Usage

```dart
import 'package:bad_words/bad_words.dart';

final filter = Filter();

if (filter.isProfane('some string to test')) {
    // ... validation error etc.
}

// clean up a profane string
final cleanString = filter.clean('some test string');
```
