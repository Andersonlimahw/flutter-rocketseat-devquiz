import 'dart:core';

import 'package:flutter/cupertino.dart';

class ChallangeController {
  // currentPage
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;
   
  //questionsCounts
  final rightQuestionsCountNotifier = ValueNotifier<int>(0);
  int get rightQuestionsCount => rightQuestionsCountNotifier.value;
  set rightQuestionsCount(int value) => currentPageNotifier.value = value;
  
}