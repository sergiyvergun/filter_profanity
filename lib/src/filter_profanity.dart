library filter_profanity;

import 'package:filter_profanity/src/profanity_words.dart';

bool hasProfanity(String value, {List<String>? languagesOffensiveWords}) {
  List<String> offensiveWords =
      languagesOffensiveWords ?? allLanguagesOffensiveWords;
  bool has = (offensiveWords.toSet().intersection(value.split(' ').toSet()))
      .isNotEmpty;
  if (!has) {
    has = (offensiveWords.toSet().intersection(value.split('\n').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (offensiveWords.toSet().intersection(value.split('&').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (offensiveWords.toSet().intersection(value.split(',').toSet()))
        .isNotEmpty;
  }
  if (!has) {
    has = (offensiveWords.toSet().intersection(value.split('.').toSet()))
        .isNotEmpty;
  }
  return has;
}
