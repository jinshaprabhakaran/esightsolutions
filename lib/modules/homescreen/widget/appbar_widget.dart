import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../global/constants/styles/colors.dart';
import '../../../global/constants/styles/text_styles.dart';

class CommonAppBarWidget extends StatelessWidget {
  const CommonAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: kIsWeb ? kGrey.shade100 : kGrey.shade200,
    leadingWidth: 70.w,
        leading: Row(children: [
          Gap(10.w),
          CircleAvatar(radius: 25.sp,
            backgroundImage: AssetImage(profile),)  
        ],),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       kIsWeb ? KStyles().semiBold16(text: 'Welcome back,') :  KStyles().semiBold14(text: 'Welcome back,'),
        kIsWeb ? KStyles().semiBold23(text: 'Celeste') :  KStyles().semiBold19(text: 'Celeste'),
        ],),
        actions: [
         SvgPicture.asset(filterIcon),
         Gap(20.w)
        ],
        
      
    );
  }
}