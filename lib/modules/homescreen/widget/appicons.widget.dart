import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconsWidget extends StatelessWidget {
  const AppIconsWidget({super.key,required this.imageName});
final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(width: 30.w,height: 30.h,
    decoration: const BoxDecoration(color: kWhite,shape: BoxShape.circle),
     child: Center(child: SvgPicture.asset(imageName,width: 17.w,height: 17.h,)),
    );
  }
}