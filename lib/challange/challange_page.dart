import 'package:DevQuiz/challange/challange_controller.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/challange/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challange/widgets/quiz/quiz_widtget.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

import 'widgets/next_button/next_button_widget.dart';

class ChallangePage extends StatefulWidget {
  final List<QuestionModel> questions;

  const ChallangePage({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  _ChallangePageState createState() => _ChallangePageState();
}

class _ChallangePageState extends State<ChallangePage> {
  final controller = ChallangeController();
  final pageController = PageController();

  @override
  void initState() {
    // controller.currentPageNotifier.addListener(() {
    //   setState(() {});
    // });
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  bool canContinue (int value) => value < widget.questions.length;

  void nextPage() {
    if(canContinue(controller.currentPage))
      pageController.nextPage(
          duration: Duration(milliseconds: 500), 
          curve: Curves.easeInCubic);
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //BackButton(), // Chama Navigator.pop()
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                ValueListenableBuilder<int>(
                  valueListenable: controller.currentPageNotifier,
                  builder: (context, value, _) => QuestionIndicatorWidget(
                    currentPage: value,
                    length: widget.questions.length,
                  ),
                )
              ],
            )),
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: widget.questions
              .map((e) =>
                  QuizWidget(title: e.title, question: e, onChange: nextPage))
              .toList()),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ValueListenableBuilder(
              valueListenable: controller.currentPageNotifier,
              builder: (context, value, _) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (canContinue(controller.currentPage))
                      Expanded(
                        child: NextButtonWidget.white(
                        label: "Pular",
                        onTap: () {
                          nextPage();
                        })
                      ),                      
                      if (value == widget.questions.length)
                      Expanded(
                        child: NextButtonWidget.green(
                            label: "Confirmar",
                            onTap: () {
                              Navigator.pop(context); // TODO: salvar no banco de dados sqllite
                            })
                          ),
                    ],
                  )),
        ),
      ),
    );
  }
}
