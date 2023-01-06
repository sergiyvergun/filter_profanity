import 'package:filter_profanity/filter_profanity.dart';
import 'package:flutter/foundation.dart';

void main() {
  if (kDebugMode) {
    print(hasProfanity('putin'));
  }
}
