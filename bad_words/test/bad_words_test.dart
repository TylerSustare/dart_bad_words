import 'package:test/test.dart';
import 'package:bad_words/bad_words.dart';

void main() {
  test('tests isProfane method', () {
    final filter = Filter();
    expect(filter.isProfane('wholesome text'), false);
    expect(filter.isProfane("All of the Dodgers can eat a 🍆"), true);
    expect(filter.isProfane("Fuck the Dodgers"), true);
    expect(filter.isProfane('All Dodgers are nobheads'), true);
    expect(filter.isProfane('The Dodgers are sh!t'), true);
    expect(() => filter.isProfane(null), throwsNoSuchMethodError);
  });

  test('test clean method', () {
    final filter = Filter();
    // clean string
    expect(filter.clean('test string without asterisks'),
        'test string without asterisks');
    // beginning of the string
    expect(filter.clean('fucking test string'), '******* test string');
    // end of the string
    expect(filter.clean('All Dodgers are sh!t'), 'All Dodgers are ****');
    // test more than one bad word
    expect(filter.clean('Those shitty Dodgers are arschloch'),
        'Those ****** Dodgers are *********');
  });
}
