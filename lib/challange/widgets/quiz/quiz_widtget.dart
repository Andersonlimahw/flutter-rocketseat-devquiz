import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/challange/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final String title;
  final QuestionModel question;
  const QuizWidget({
    Key? key,
    required this.title,
    required this.question,
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = - 1;
  
  AnswerModel answers(int index) => widget.question.answers[index];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            widget.title, 
            style: AppTextStyles.heading
          ), 
          SizedBox(
            height: 24,
          ), 
          for(var i =0; i < widget.question.answers.length; i++) 
            AnswerWidget(
                answer: answers(i), 
                isSelected: indexSelected == i,
                onTap: () {
                  indexSelected = i;
                  setState(() {
                    
                  });
                },
              ),
        ],
      ),
    );
  }
}
