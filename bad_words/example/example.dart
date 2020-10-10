import 'package:bad_words/bad_words.dart';

main() {
  final testString = 'string that does not contain bad words';

  // check if the string is profane
  if (Filter.isProfane(testString)) {
    print('put a nickle in the swear jar!');
  }

  // clean up those bad words
  final clean = Filter.clean(testString);
  return clean;
}
