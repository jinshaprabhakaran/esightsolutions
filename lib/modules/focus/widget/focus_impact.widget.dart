import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FocusImpactWidget extends StatelessWidget {
  const FocusImpactWidget({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        decoration: BoxDecoration(color: kWhite,
        borderRadius: BorderRadius.circular(20.sp)),
        child: KStyles().semiBold12(text: 'Moderate focus impact'),),
        Gap(7.w),
        Expanded(child: KStyles().semiBold12(text: text)),
      ],
    );
  }
}