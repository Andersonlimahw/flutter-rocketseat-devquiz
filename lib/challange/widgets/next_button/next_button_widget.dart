import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/core.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backGroundColor;
  final Color fontColor;
  final Color borderColor;

  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backGroundColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({ required String label, required VoidCallback onTap }): 
    this.backGroundColor = 
    AppColors.green, 
    this.fontColor = AppColors.white,
    this.borderColor = AppColors.green,
    this.label = label,
    this.onTap = onTap;

  NextButtonWidget.white({ required String label , required VoidCallback onTap }): 
    this.backGroundColor = 
    AppColors.white, 
    this.fontColor = AppColors.grey,
    this.borderColor = AppColors.border,
    this.label = label,
    this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backGroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: MaterialStateProperty.all(BorderSide(color: AppColors.border))
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: fontColor),
        ),
      ),
    );
  }
}
