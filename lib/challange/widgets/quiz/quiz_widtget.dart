import 'package:flutter/material.dart';

import 'package:DevQuiz/challange/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  final QuestionModel question;
  const QuizWidget({
    Key? key,
    required this.title,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            title, 
            style: AppTextStyles.heading
          ), 
          SizedBox(
            height: 24,
          ), 
          ...question.answers.map((e) => 
            AnswerWidget(title: e.title,)
          )
        ],
      ),
    );
  }
}
