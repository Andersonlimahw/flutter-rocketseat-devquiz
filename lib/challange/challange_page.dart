import 'package:DevQuiz/challange/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challange/widgets/quiz/quiz_widtget.dart';
import 'package:flutter/material.dart';

import 'widgets/next_button/next_button_widget.dart';

class ChallangePage extends StatefulWidget {
  const ChallangePage({Key? key}) : super(key: key);

  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(child: QuestionIndicatorWidget())),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
      bottomNavigationBar: SafeArea(
        bottom:  true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: NextButtonWidget.white(label: "Pular", onTap: () {})
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                child: NextButtonWidget.green(label: "Confirmar", onTap: () {})
              ),
            ],
          ),
        ),
      ),
    );
  }
}
