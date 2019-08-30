import 'package:flutter_test/flutter_test.dart';
import 'package:bad_words/bad_words.dart';

void main() {
  test('adds one to input values', () {
    final filter = Filter();
    expect(filter.isProfane('wholesome text'), false);
    expect(filter.isProfane("All of the Dodgers can eat a 🍆"), true);
    expect(filter.isProfane("Fuck the Dodgers"), true);
    expect(filter.isProfane('All Dodgers are nobheads'), true);
    expect(filter.isProfane('The Dodgers are sh!t'), true);
    expect(() => filter.isProfane(null), throwsNoSuchMethodError);
  });
}
