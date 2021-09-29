import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  // Inicializando state como empty
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
        name: "Lemon",
        photoUrl: "https://avatars.githubusercontent.com/u/15092575?v=4");

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NWL 5 Flutter",
        questions: [
          QuestionModel(
            title: "Pergunta  1",
            answers: [
              AnswerModel(title: "Resposta pergunta 1"),
            ],
          ), 
          QuestionModel(
            title: "Pergunta  2",
            answers: [
              AnswerModel(title: "Resposta pergunta 2"),
            ],
          )
        ],
        image: AppImages.blocks,
        level: Level.facil,
        questionAnswered: 1
      ), 
    ];
    state = HomeState.success;
  }
}
