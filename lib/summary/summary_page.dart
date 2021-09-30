import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import 'package:DevQuiz/challange/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/core.dart';

class SummaryPage extends StatelessWidget {
  final int questionsCount;
  final int result;
  final String questionsTitle;

  const SummaryPage({
    Key? key,
    required this.questionsCount,
    required this.result,
    required this.questionsTitle,
  }) : super(key: key);

  double get calculatePercetual => (result / questionsCount) * 100;

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
                  "com $result de $questionsCount perguntas.\naproveitamento de $calculatePercetual%",
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
                          Share.share(
                            "Olá, \n Este foi o resultado do meu quiz, $questionsTitle, \n acertei $result de $questionsCount perguntas \n obtive ${calculatePercetual}% de aproveitamento.",
                            subject: "Fluter Rocketseat : Quiz $questionsTitle"
                          );
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
