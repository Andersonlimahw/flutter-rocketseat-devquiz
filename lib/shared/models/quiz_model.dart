import 'package:DevQuiz/shared/models/question_model.dart';

enum Level {
  facil, 
  medio, 
  dificil, 
  perito
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final questionAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered = 0, 
    required this.image, 
    required this.level,
  });
}