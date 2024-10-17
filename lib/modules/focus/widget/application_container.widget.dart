import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/homescreen/widget/appicons.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ApplicationConatinerWidget extends StatelessWidget {
  const ApplicationConatinerWidget({super.key,required this.color,required this.width,required this.title,required this.subTitle,required this.image});
final Color color;
final double width; 
final String title;
final String subTitle;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(width: width,
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(30.sp)
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex:1,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KStyles().semiBold15(text:title ),
                    KStyles().semiBold14(text:subTitle,color: kGrey )
                  ],
                ),
              ),
              Gap(30.w),
             AppIconsWidget(imageName: image)
            ],
          ),
          Gap(70.h)
        ],
      ),
    );
  }
}