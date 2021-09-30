import 'package:DevQuiz/challange/widgets/next_button/next_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryPage extends StatelessWidget {
  final String answersScore;
  final String questionsTitle;

  const SummaryPage({
    Key? key,
    required this.answersScore,
    required this.questionsTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 192,
            height: 192,
            child: Image.asset(AppImages.trophy),            
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Parabéns", 
                style: AppTextStyles.heading40,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Você concluiu", 
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            questionsTitle,
             style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w900,
              fontSize: 15,
              color: AppColors.black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            answersScore,
             style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.black),
          ),
        ],
      ),
    ),
    bottomNavigationBar: SafeArea(
      bottom: true,
      child: Container(
        width: 300,
        height: 240,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                width: 240,
                child: NextButtonWidget.purple(
                  label: "Compartilhar", onTap: () {}
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 240,
                child: NextButtonWidget.white(
                  label: "Voltar ao início", onTap: () {}
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
            
          ),
      ),
    ),);
  }
}
