import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/landingscreen/controller/landing.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> with TickerProviderStateMixin {
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var landCtrl = Provider.of<LandingController>(context, listen: false);
      landCtrl.initializeController(this);
      landCtrl.initializeVerticalAnimation(context);
      landCtrl.controller?.addListener(() {
        if (mounted) {
          setState(() {
            double starPosition = landCtrl.verticalAnimation?.value ?? 0.0;
            int index = ((starPosition + 80) / 36).floor();
            landCtrl.highlightedIndex = index.clamp(0, landCtrl.texts.length - 1);
          });
        }
      });
      landCtrl.startAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRose,
      body: Consumer<LandingController>(
        builder: (context, landCtrl, child) {
          return Stack(
            children: [
              ListView.builder(
                itemCount: landCtrl.texts.length,
                itemBuilder: (context, index) {
                  return KStyles().semiBold36(height: 0,
                    text: landCtrl.texts[index],
                    color: kBlack.withOpacity(0.3),
                  );
                },
              ),
              if (landCtrl.controller != null && landCtrl.verticalAnimation != null) 
                AnimatedBuilder(
                  animation: landCtrl.controller!,
                  builder: (context, child) {
                    double rotationSpeed = 2;
                    double angle = landCtrl.controller!.value * rotationSpeed * 2 * math.pi;
                    double topPosition = landCtrl.verticalAnimation!.value;

                    return Positioned(
                      left: -150.w,
                      top: topPosition,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.rotate(
                            angle: angle,
                            alignment: Alignment.center,
                            child: Image.asset(
                              star,
                            ),
                          ),
                          KStyles().semiBold36(
                            text: landCtrl.texts[landCtrl.highlightedIndex],
                            color: kBlack,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              Positioned(
                bottom: 20.h,
                left: 30.w,
                right: 30.w,
                child: GestureDetector(
                  onTap: () async{
                    await landCtrl.disposeController(); 
                       // ignore: use_build_context_synchronously
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
          );
        },
      ),
    );
  }
}
