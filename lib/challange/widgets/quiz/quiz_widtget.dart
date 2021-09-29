import 'package:DevQuiz/challange/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({ Key? key, required this.title }) : super(key: key);

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
          AnswerWidget(title: "Pergunta 01...", isRight: true, isSelected: true),
          AnswerWidget(title: "Pergunta 02...", isRight: false, isSelected: true),
          AnswerWidget(title: "Pergunta 03..."),
          AnswerWidget(title: "Pergunta 04..."),
        ],
      ),
    );
  }
}