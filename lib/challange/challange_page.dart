import 'package:DevQuiz/challange/widgets/question_indicator/question_indicator_widget.dart';
import 'package:flutter/material.dart';

class ChallangePage extends StatefulWidget {
  const ChallangePage({ Key? key }) : super(key: key);

  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: 
          SafeArea(
            child: QuestionIndicatorWidget()
          )
      ),
    );
  }
}