import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';

class ChartWidget extends StatelessWidget {
  final double score;
  const ChartWidget({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: score,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                )),
          ),
          Center(
            child: Text(
            "${score}%",
            style: AppTextStyles.heading,
          ))
        ],
      ),
    );
  }
}
