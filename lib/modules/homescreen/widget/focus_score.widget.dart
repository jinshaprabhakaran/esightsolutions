import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/homescreen/widget/appicons.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FocusScoreWidget extends StatelessWidget {
  const FocusScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, 'focus');
    },
     child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
            decoration: 
            BoxDecoration(color: kDeepRose.withOpacity(0.4),
              borderRadius: BorderRadius.circular(40.sp)
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KStyles().med14(text: 'FOCUS SCORE'),
                Gap(10.h),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KStyles().semiBold23(text: '8.5'),
                        KStyles().med13(text: 'Good')
                      ],
                    ),
                    Gap(5.w),
                    Image.asset(smallstar),
                    Gap(100.w),
                    Stack(clipBehavior: Clip.none,
                      children: [
                       Container(width: 30.w,height: 30.h,
                  decoration: const BoxDecoration(color: kWhite,shape: BoxShape.circle),
                         child: Center(child: Image.asset(clickup,width: 18.w,height: 18.h,)),),          
                        Positioned(right: -25.w,
                          child: AppIconsWidget(imageName: whatsapp)),
                          Positioned(right: -50.w,
                          child: AppIconsWidget(imageName: instagram)),
                            Positioned(right: -76.w,
                          child: AppIconsWidget(imageName: dribble)),
                            Positioned(right: -103.w,
                          child: AppIconsWidget(imageName:youtube)),
                          Positioned(top: 32.h,
                            child:KStyles().med11(text: 'Most used') )
                      ],
                    )
                  ],
                ),
                Gap(10.h),
                Row(
                  children: [
                    Gap(10.w),
                    IconButton(onPressed: (){}, icon: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      border: Border.all(
                      color:kBlack)),
                      child: const Icon(
                      Icons.trending_up,
                      ),
                    )),
                      Gap(10.w),
                    Expanded(child: 
                    KStyles().med13(text: 'Way to go! Your screen time this week is 7% less than last week'))
                  ],
                )
              ])),
   );

  }
}