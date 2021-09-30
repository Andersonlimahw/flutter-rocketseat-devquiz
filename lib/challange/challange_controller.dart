import 'dart:core';

import 'package:flutter/cupertino.dart';

class ChallangeController {
  // currentPage
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int qtdAnswersRight = 0;
}