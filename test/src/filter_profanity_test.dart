import 'package:filter_profanity/src/filter_profanity.dart';
import 'package:filter_profanity/src/profanity_words.dart';
import 'package:test/test.dart';

void main() {
  group('Profanity', () {
    test('hasProfanity from offensive word must be true', () {
      expect(hasProfanity('putin'), true);
    });

    test('hasProfanity from offensive split word must be true', () {
      expect(hasProfanity('putin . dick'), true);
    });

    test('hasProfanity from not offensive word must be false', () {
      expect(hasProfanity('Hello'), false);
    });

    test(
        'hasProfanity from offensive word of selected offensive words must be true',
        () {
      expect(
          hasProfanity('putin', languagesOffensiveWords: englishOffensiveWords),
          true);
    });

    test(
        'hasProfanity from not offensive word of selected offensive words must be false',
        () {
      expect(
          hasProfanity('putin', languagesOffensiveWords: koreanOffensiveWords),
          false);
    });
  });
}
