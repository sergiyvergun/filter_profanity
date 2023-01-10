import 'package:filter_profanity/filter_profanity.dart';

/// Check if provided String contains offensive words
bool hasProfanity(String value, {List<String>? offensiveWords}) {
  List<String> _offensiveWords = offensiveWords ?? allLanguagesOffensiveWords;
  bool has = (_offensiveWords
          .toSet()
          .intersection(value.toLowerCase().split(' ').toSet()))
      .isNotEmpty;
  if (!has) {
    has = (_offensiveWords
            .toSet()
            .intersection(value.toLowerCase().split('\n').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (_offensiveWords
            .toSet()
            .intersection(value.toLowerCase().split('&').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (_offensiveWords
            .toSet()
            .intersection(value.toLowerCase().split(',').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (_offensiveWords
            .toSet()
            .intersection(value.toLowerCase().split('.').toSet()))
        .isNotEmpty;
  }
  return has;
}
