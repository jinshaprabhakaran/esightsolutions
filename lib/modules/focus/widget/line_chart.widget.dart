import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../global/constants/styles/colors.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
            BarChartData(
              maxY: 10,
              barGroups: [ BarChartGroupData(
        x: 0,
        barRods: [BarChartRodData(toY: 5, color: kBlack, width: 3)],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [BarChartRodData(toY: 7, color: kRed, width: 3)],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [BarChartRodData(toY: 3, color: kBlack, width: 3)],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [BarChartRodData(toY: 6, color: kRed, width: 3)],
      ),
      BarChartGroupData(
        x: 8,
        barRods: [BarChartRodData(toY: 4, color: kBlack, width: 3)],
      ),
      BarChartGroupData(
        x: 10,
        barRods: [BarChartRodData(toY: 5, color: kRed, width: 3)],
      ),
      BarChartGroupData(
        x: 13,
        barRods: [BarChartRodData(toY: 3, color: kBlack, width: 3)],
      ),],
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                horizontalInterval: 3,
                getDrawingHorizontalLine: (value) {
                  return const FlLine(
                    color: Colors.grey,
                    strokeWidth: 0.3,
                  );
                },
                drawVerticalLine: false,
              ),
              titlesData: FlTitlesData(
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      switch (value.toInt()) {
                        case 0:
                          return KStyles().med13(text: '8 AM'); 
                        case 3:
                         return KStyles().med13(text: '10 AM'); 
                        case 4:
                         return KStyles().med13(text: '12 PM'); 
                        case 6:
                         return KStyles().med13(text: '2 PM'); 
                        case 8:
                         return KStyles().med13(text: '4 PM'); 
                        case 10:
                          return KStyles().med13(text:'6 PM');
                        case 13:
                          return KStyles().med13(text:'8 PM');
                        default:
                          return const Text('');
                      }
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barTouchData: BarTouchData(
                enabled: true,
              ),
            ),
          );
       
  }

}