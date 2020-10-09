library bad_words;

import 'word_list.dart';

/// Bad Word Filter
class Filter {
  String replacer = '*';

  /// isProfane returns a boolean value representing if the string provided contains a profane word
  bool isProfane(String string) {
    final lowered = string.toLowerCase();
    return wordList.where((word) => lowered.contains(word)).isNotEmpty;
  }

  /// replace tests a string, replacing bad words with an asterisk length string of equal length
  String clean(String string) {
    wordList.forEach((badWord) {
      try {
        var badWordRegex = RegExp("($badWord)", caseSensitive: false);
        if (string.contains(badWordRegex)) {
          String replace = _replace(replacer: '*', word: badWord);
          print('badWord');
          print(badWord);
          print('badWordRegex');
          print(badWordRegex);
          print('replace');
          print(replace);
          string = string.replaceAll(badWordRegex, replace);
        }
      } catch (e) {
        print('*********************');
        print(badWord);
        print(e);
        print('*********************');
      }
    });
    return string;
  }

  String _replace({String word, String replacer}) {
    String chars = '';
    for (var i = 0; i < word.length; i++) {
      if (word[i] == ' ') {
        chars += ' ';
      } else {
        chars += replacer;
      }
    }
    return chars;
  }
}
