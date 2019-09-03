import 'package:bad_words/bad_words.dart';

main() {
  final testString = 'string that does not contain bad words';
  final filter = Filter();

  if (filter.isProfane(testString)) {
    print('put a nickle in the swear jar!');
  }
}
