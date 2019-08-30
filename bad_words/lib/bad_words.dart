library bad_words;

import 'word_list.dart';

/// Bad Word Filter
class Filter {
  isProfane(String stringToTest) {
    final lowerCaseStringToTest = stringToTest.toLowerCase();
    return wordList
        .where((word) => lowerCaseStringToTest.contains(word))
        .isNotEmpty;
  }
}
