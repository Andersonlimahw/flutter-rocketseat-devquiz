import 'package:DevQuiz/challange/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/home/home_page.dart';
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
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 192,
                  height: 192,
                  child: Image.asset(AppImages.trophy),
                ),
              ],
            ),
         
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
              Row(
                children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68),
                    child: NextButtonWidget.purple(
                        label: "Compartilhar",
                        onTap: () {
                          print(answersScore);
                        }),
                  ),
                ),
              ]),
              SizedBox(
                height: 24,
              ),
               Row(
                children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68),
                    child: NextButtonWidget.white(
                        label: "Voltar ao início",
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
              ]),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
