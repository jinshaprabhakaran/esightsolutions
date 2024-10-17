import 'package:esightsolutions/global/constants/images/images.dart';
import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:esightsolutions/modules/focus/widget/application_container.widget.dart';
import 'package:esightsolutions/modules/focus/widget/focus_impact.widget.dart';
import 'package:esightsolutions/modules/focus/widget/line_chart.widget.dart';
import 'package:esightsolutions/modules/homescreen/widget/appicons.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../global/constants/styles/colors.dart';
import '../widget/line_progress.widget.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kIsWeb ? kGrey.shade100 : kGrey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: AppBar(
          backgroundColor:  kIsWeb ? kGrey.shade100 : kGrey.shade200,
          leadingWidth: 70.w,
          leading: Row(
            children: [
              Gap(20.w),
              IconButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: kBlack.withOpacity(0.6)),
              ),
            ],
          ),
          title: KStyles().semiBold20(text: 'Applications'),
          actions: [
            Icon(
              Icons.search_outlined,
              color: kBlack.withOpacity(0.5),
              size: 30.sp,
            ),
            Gap(20.w),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color:  kIsWeb ? const Color.fromARGB(255, 237, 254, 237) : const Color.fromARGB(255, 241, 247, 241),
                  borderRadius: BorderRadius.circular(30.sp),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              KStyles().semiBold15(text: 'clickup'),
                              KStyles().semiBold14(text: '1.5 hrs/day', color: kGrey),
                            ],
                          ),
                        ),
                        Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: const BoxDecoration(color: kWhite, shape: BoxShape.circle),
                          child: Center(
                            child: Image.asset(clickup, width: 20.w, height: 20.h),
                          ),
                        ),
                      ],
                    ),
                    Gap(70.h),
                  ],
                ),
              ),
              Positioned(
                top: kIsWeb ? 100.h : 70.h,
                left: 0,
                right: 0,
                child: ApplicationConatinerWidget(
                  color: kGreen.shade100,
                  width: double.infinity,
                  title: 'Whatsapp',
                  subTitle: '1.08 hrs/day',
                  image: whatsapp,
                ),
              ),
              Positioned(
                top: kIsWeb ? 200.h : 140.h,
                left: 0,
                right: 0,
                child: ApplicationConatinerWidget(
                  color: Colors.pink.shade100,
                  width: double.infinity,
                  title: 'Instagram',
                  subTitle: '52 mins/day',
                  image: instagram,
                ),
              ),
              Positioned(             
                top: kIsWeb ? 300.h : 210.h, 
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    color:kIsWeb ?Colors.yellow.shade100:
                     const Color.fromARGB(255, 241, 207, 157),
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                KStyles().semiBold15(text: 'Dribble'),
                                KStyles().semiBold14(text: '32 min/day', color: kGrey),
                              ],
                            ),
                          ),
                          AppIconsWidget(imageName: arrow),
                          Gap(5.w),
                          AppIconsWidget(imageName: dribble),
                        ],
                      ),
                      Gap(10.h),
                      const FocusImpactWidget(text: 'Last active 34 mins ago'),
                      Gap(20.h),
                      SizedBox(
                        height: 100.h,
                        child: const LineChartWidget(),
                      ),
                        Gap(20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KStyles().semiBold16(text: '42 minutes today'),
                          KStyles().semiBold12(text: '5 pickups', color: kGrey),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KStyles().med14(text: '7:55'),
                          KStyles().med14(text: '4min 3sec'),
                        ],
                      ),
                      const LineProgressIndicator(),
                      Gap(400.h), 
                    ],
                  ),
                ),
              ),
            ],
          
          ),
        ],
      ),
    );
  }
}
