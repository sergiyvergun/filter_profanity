import 'package:filter_profanity/filter_profanity.dart';

bool hasProfanity(String value, {List<String>? offensiveWordsLanguages}) {
  List<String> offensiveWords =
      offensiveWordsLanguages ?? allLanguagesOffensiveWords;
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
