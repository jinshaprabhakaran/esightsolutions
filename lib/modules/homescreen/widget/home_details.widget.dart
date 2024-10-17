import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/homescreen/widget/home_chart.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import '../../../global/constants/styles/colors.dart';


class HomeDetailsWidget extends StatelessWidget {
  const HomeDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          decoration: 
          BoxDecoration(color: kWhite,
            borderRadius: BorderRadius.circular(40.sp)
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              children: [
                Expanded(
                  child: KStyles().med13(text: 'SCREEN TIME')),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h,  
                   ),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp),
                     border: Border.all(color: kGrey)
                   ),
                   child: KStyles().semiBold14(text: 'Thu, June 20',color: kGrey)
                   ),
                   Gap(10.w),
                  Container(padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h,  
                  ),
                  decoration: BoxDecoration(shape: BoxShape.circle,
                    border: Border.all(color: kGrey)
                  ),
                  child: SvgPicture.asset(calendar)
                  ),     
              ],
             ),
             Gap(10.h),
             Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: 
                      KStyles().semiBold30(text: '2:43')),

                   Expanded(
                     child:
                      KStyles().semiBold20(text: '0:12')),
                 Expanded(
                   child: 
                      KStyles().semiBold20(text: '23'),
                 )     
              ],
             ),
             Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: 
                        KStyles().semiBold14(text: 'Today'),   
                ),
                   Expanded(
                     child: 
                      KStyles().semiBold14(text: 'Last hour'),
                   ),
                 Expanded(
                   child: 
                        KStyles().semiBold14(text: 'Phone pickups'),                  
                 ),
                   
              ],
             ),
             Gap(20.h),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const HomeChartWidget(),
              ),
         kIsWeb ? Gap(250.h) : Gap(170.h),

            ],
          ),
        );
  }
   
}