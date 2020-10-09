import 'package:test/test.dart';
import 'package:bad_words/bad_words.dart';

void main() {
  test('tests isProfane method', () {
    expect(Filter.isProfane('wholesome text'), false);
    expect(Filter.isProfane("All of the Dodgers can eat a 🍆"), true);
    expect(Filter.isProfane("Fuck the Dodgers"), true);
    expect(Filter.isProfane('All Dodgers are nobheads'), true);
    expect(Filter.isProfane('The Dodgers are sh!t'), true);
    expect(() => Filter.isProfane(null), throwsNoSuchMethodError);
  });

  test('test clean method', () {
    // clean string
    expect(Filter.clean('test string without asterisks'),
        'test string without asterisks');
    // beginning of the string
    expect(Filter.clean('fucking test string'), '******* test string');
    // end of the string
    expect(Filter.clean('All Dodgers are sh!t'), 'All Dodgers are ****');
    // test more than one bad word
    expect(Filter.clean('Those shitty Dodgers are arschloch'),
        'Those ****** Dodgers are *********');
  });
}
