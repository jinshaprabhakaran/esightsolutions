import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'dart:async';



class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> with TickerProviderStateMixin {
  double angle = 0.0; 
  double verticalPosition = -80.h; 
  int highlightedIndex = 0; 
  bool isAnimating = true; 
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

  @override
  void initState() {
    super.initState();
    startAnimation(); 
  }

   startAnimation() {
    const double rotationSpeed = 5; 
    const Duration frameDuration = Duration(milliseconds: 16); 
    Timer.periodic(frameDuration, (timer) {
      if (!isAnimating) {
        timer.cancel(); 
        return;
      }
      setState(() {
        angle += rotationSpeed * 0.02; 
        verticalPosition += 1.5; 

        if (verticalPosition > MediaQuery.of(context).size.height + 80.h) {
          verticalPosition = -80.h;
        }
        int index = ((verticalPosition + 80) / 36).floor();
        highlightedIndex = index.clamp(0, texts.length - 1); 
      });
    });
  }

  @override
  void dispose() {
    isAnimating = false; 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRose,
      body: Stack(
        children: [
          ListView.builder(
            itemCount: texts.length,
            itemBuilder: (context, index) {
              return KStyles().semiBold36(
                height: 0,
                text: texts[index],
                color: kBlack.withOpacity(0.3),
              );
            },
          ),
          Positioned(
            left: -140.w,
            top: verticalPosition,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: angle,
                  alignment: Alignment.center,
                  child: Image.asset(
                  star
                  ),
                ),
                KStyles().semiBold30(
                  text: texts[highlightedIndex],
                  color: kBlack,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 30.w,
            right: 30.w,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isAnimating = false; 
                });
                Navigator.pushNamedAndRemoveUntil(context, 'home', (routes) => false);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.sp),
                  border: Border.all(color: kBlack),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KStyles().med15(text: 'Get Started'),
                    Gap(30.w),
                    const Icon(Icons.arrow_forward_ios, size: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
