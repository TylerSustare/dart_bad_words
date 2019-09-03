# bad_words
A dart filter for English bad words.

https://pub.dev/packages/bad_words

## Installation 
``` yaml
bad_words: ^0.0.1
```

## Usage

``` dart
import 'package:bad_words/bad_words.dart';

final filter = Filter();

if (filter.isProfane('some string to test')) {
    // ... validation error etc.
}
```

