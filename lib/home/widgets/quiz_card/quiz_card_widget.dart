import 'package:flutter/material.dart';

import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;
  final String image;
  
  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: 
        BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
             color: AppColors.border,
          ),
        )
      ),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width : 40,
              child: Image.asset("assets/images/${image}.png"),
              // child: Image.asset(AppImages.blocks),
            ), 
            SizedBox(height: 20),
            Text(
              title,
              style: AppTextStyles.heading15
            ), 
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    completed,
                    style: AppTextStyles.body11
                  ),
                ), 
                Expanded(
                    flex: 3,
                    child: ProgressIndicatorWidget(
                    value: percent
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}
