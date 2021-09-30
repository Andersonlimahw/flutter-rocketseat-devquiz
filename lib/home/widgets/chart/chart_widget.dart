import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';

class ChartWidget extends StatefulWidget {
  final double score;
  const ChartWidget({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animaton;

  void _initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animaton =
        Tween<double>(begin: 0.0, end: widget.score).animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  int get animationValue =>  (_animaton.value * 100).toInt();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        child: AnimatedBuilder(
          animation: _animaton,
          builder: (context, _) => Stack(
            children: [
              Center(
                child: Container(
                    height: 80,
                    width: 80,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: _animaton.value,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                    )),
              ),
              Center(
                  child: Text(
                "${animationValue}%",
                style: AppTextStyles.heading,
              ))
            ],
          ),
        ));
  }
}
