import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:esightsolutions/global/constants/widgets/common_button.widget.dart';
import 'package:esightsolutions/modules/homescreen/widget/appbar_widget.dart';
import 'package:esightsolutions/modules/homescreen/widget/focus_score.widget.dart';
import 'package:esightsolutions/modules/homescreen/widget/home_details.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: kIsWeb ? kGrey.shade100 : kGrey.shade200,
    appBar: PreferredSize(preferredSize: Size.fromHeight(70.sp),
      child: const CommonAppBarWidget()
    ),
    body:  
      SingleChildScrollView(physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack (clipBehavior: Clip.none,
              children:[ const HomeDetailsWidget(),
                 Positioned(bottom: 
                  0.h,
                 left: 0,
                  right: 0,
            child: const FocusScoreWidget(),)
                 ]),
                 Gap( kIsWeb ? 20.h : 7.h),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 10.w),
                   child: CommonButtonWidget(height: kIsWeb ? 100.h :
                   50.h,
                    onPressed: (){
                     Navigator.pushNamed(context, 'total');
                   }, text: 'Calculate textamount'),
                 ),
                   
                   ]),
      ));
   
  }
}