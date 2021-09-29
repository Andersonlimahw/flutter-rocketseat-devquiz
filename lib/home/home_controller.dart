import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

import 'home_repository.dart';


class HomeController {
  // Inicializando state como empty
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel user = UserModel(
    name: "...", 
    photoUrl: "https://avatars.githubusercontent.com/u/15092575?v=4", 
    score: 0,
  );
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    // await Future.delayed(Duration(seconds: 1));
    user = await repository.getUser();
    await Future.delayed(Duration(seconds: 1));
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    // await Future.delayed(Duration(seconds: 2));
    quizzes = await repository.getQuizzes();
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.success;
  }
}
