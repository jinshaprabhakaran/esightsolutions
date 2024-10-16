import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LandingController extends ChangeNotifier {
  AnimationController? controller; 
  Animation<double>? verticalAnimation; 
  int highlightedIndex = -1;

  List<String> texts = [
    'Goal - setting',
    'Dedication',
    'Workflow',
    'Efficiency',
    'Concentration',
    'Discipline',
    'Dedication',
    'Balance',
    'Productivity',
    'Time-Manager',
    'Performance',
    'Focus',
  ];

  initializeController(TickerProvider vsync,) {
    controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 4),
    );
  }

   initializeVerticalAnimation(BuildContext context) {
    if (controller != null) {
      verticalAnimation = Tween<double>(
        begin: -80.h,
        end: MediaQuery.of(context).size.height + 80,
      ).animate(CurvedAnimation(
        parent: controller!,
        curve: Curves.linear,
      ));
    }
  }

   startAnimation() {
    controller?.repeat();
  }

 disposeController() {
    controller?.dispose();
  }
}
