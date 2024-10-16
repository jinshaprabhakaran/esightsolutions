import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:flutter/material.dart';

class LineProgressIndicator extends StatelessWidget {
  const LineProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
                              
                              minHeight: 5,
                              value: 5 / 12,
                             color: kRed ,
                              borderRadius: BorderRadius.circular(10),
                              backgroundColor: kGrey.withOpacity(0.3),
                            );
  }
}