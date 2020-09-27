import 'package:bad_words/bad_words.dart';

main() {
  final testString = 'string that does not contain bad words';
  final filter = Filter();

  // check if the string is profane
  if (filter.isProfane(testString)) {
    print('put a nickle in the swear jar!');
  }

  // clean up those bad words
  final clean = filter.clean(testString);
  return clean;
}
