import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/homescreen/widget/appicons.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
class FocusScoreWidget extends StatelessWidget {
  const FocusScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'focus');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
          color:kIsWeb ? const Color.fromARGB(255, 245, 194, 107):
           kDeepRose.withOpacity(0.4),
          borderRadius: BorderRadius.circular( kIsWeb  ? 20.sp : 30.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KStyles().med14(text: 'FOCUS SCORE'),
            Gap(10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KStyles().semiBold23(text: '8.5'),
                        KStyles().med13(text: 'Good'),
                      ],
                    ),
                    Gap(5.w),
                    Image.asset(smallstar),
                  ],
                ),
            
                SizedBox(
                  width:kIsWeb ? 150.w : 100.w,  
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: kWhite,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            clickup,
                            width: 18.w,
                            height: 18.h,
                          ),
                        ),
                      ),
                      Positioned(
                       left: 15.w,
                        child: AppIconsWidget(imageName: whatsapp),
                      ),
                      Positioned(
                       left: 35.w,
                        child: AppIconsWidget(imageName: instagram),
                      ),
                      Positioned(
                        left: 52.w,
                        child: AppIconsWidget(imageName: dribble),
                      ),
                      Positioned(
                        left: 70.w,
                        child: AppIconsWidget(imageName: youtube),
                      ),
                      Positioned(
                        top: 32.h,
                        child: KStyles().med11(text: '  Most used'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(10.h),
            Row(
              children: [
               Gap(10.w),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      border: Border.all(color: kBlack),
                    ),
                    child: const Icon(
                      Icons.trending_up,
                    ),
                  ),
                ),
              Gap(10.w),
                Expanded(
                  child: KStyles().med13(
                    text: 'Way to go! Your screen time this week is 7% less than last week',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
