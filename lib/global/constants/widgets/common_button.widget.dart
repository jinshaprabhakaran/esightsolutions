import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({super.key,this.width,this.height,required this.onPressed,required this.text});
final double ? width;
final double ? height;
final void Function()onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width:width ?? double.infinity,height: height ?? 60.h ,
    child: ElevatedButton(style: ElevatedButton.styleFrom(
      backgroundColor: kRose,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.sp))
    ),
      onPressed: onPressed, child: KStyles().med17(text: text),)

    );
  }
}