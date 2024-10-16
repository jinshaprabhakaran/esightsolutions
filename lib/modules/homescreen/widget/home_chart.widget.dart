import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../global/constants/styles/colors.dart';
import '../../../global/constants/styles/text_styles.dart';

class HomeChartWidget extends StatelessWidget {
  const HomeChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 1,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey.withOpacity(0.2), 
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)), // Hide left y-axis titles
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)), // Hide right y-axis titles
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)), // Hide top titles
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 1:
                    return KStyles().med13(text: '8 AM', color: kGrey);   
                  case 4:
                    return KStyles().med13(text: '10 AM', color: kGrey);   
                  case 7:
                    return KStyles().med13(text: '12 PM', color: kGrey);   
                  case 10:
                    return KStyles().med13(text: '2 PM', color: kGrey);   
                  case 12:
                    return KStyles().med13(text: '4 PM', color: kGrey);   
                  case 14:
                    return KStyles().med13(text: '6 PM', color: kGrey);   
                  case 16:
                    return KStyles().med13(text: '8 PM', color: kGrey);   
                  default:
                    return Container();
                }
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false, 
        ),
        lineBarsData: [
          LineChartBarData(curveSmoothness: 0.9,
            spots: [
              const FlSpot(1, 3),
              const FlSpot(4, 2),
              const FlSpot(7, 3.5),
              const FlSpot(10, 2),
              const FlSpot(12, 3),
              const FlSpot(14, 2),
              const FlSpot(16, 3),
            ],
            isCurved: true,
            color: kGreen.shade200, // Line color
            barWidth: 3,
            dotData: const FlDotData(
              show: true,
             
            ),
            
            belowBarData: BarAreaData( 
              show: true,
              gradient: const LinearGradient(
                colors: [Color.fromARGB(255, 235, 244, 235), kWhite],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ), 
            ),
            
          ),
            LineChartBarData(
            spots: [
              const FlSpot(16, 1), 
              const FlSpot(16, 4.5), 
            ],
            isCurved: false,
            color: kBlack.withOpacity(0.5),
            barWidth: 1.5, 
            belowBarData: BarAreaData(show: true,color: kWhite),
            dotData: const FlDotData(show: false), 
          ),
        ],
      ),
    );
  }

  
}