import 'package:esightsolutions/global/constants/widgets/common_button.widget.dart';
import 'package:esightsolutions/global/constants/widgets/textfield.widget.dart';
import 'package:esightsolutions/modules/totalamount/controller/totalamount.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../../global/constants/styles/colors.dart';
import '../../../global/constants/styles/text_styles.dart';
import '../widget/tip_radiobutton.widget.dart';

class TotalAmountScreen extends StatefulWidget {
  const TotalAmountScreen({super.key});

  @override
  State<TotalAmountScreen> createState() => _TotalAmountScreenState();
}

class _TotalAmountScreenState extends State<TotalAmountScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
     Provider.of<TotalAmountController>(context, listen: false).onInit();
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset: false,
     backgroundColor: kLightGrey.withOpacity(0.9),
    appBar: PreferredSize(preferredSize: Size.fromHeight(70.sp),
      child: AppBar(backgroundColor: kLightGrey.withOpacity(0.4),
      leading: 
        IconButton(onPressed: (){
          Navigator.maybePop(context);
        },
          icon: Icon(Icons.arrow_back_ios,color: kBlack.withOpacity(0.7))),
      
      title: KStyles().semiBold20(text: 'Total Amount'),
      centerTitle: true,)),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child:Consumer<TotalAmountController>(
      builder: (context, totalCtrl, child) {
       return  Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Gap(50.h),
            KStyles().semiBold17(text: 'Calculate Total Amount'),
            Gap(10.h),
            KStyles().med16(text: 'Enter total amount'),
               Gap(10.h),
            TextFieldWidget(keyboardType: TextInputType.number,
              hintText: '1000', readOnly: false, boxHeight: 40, textAlign: TextAlign.left, textColor: kBlack, textEditingController: totalCtrl.total, borderColor: kWhite, borderRadius: 20)
             ,Gap(20.h),
                KStyles().med16(text: 'Select tip percentage'),
               TipRadioButton(
              title: '15%',
              value: 0.15,
             onChanged:(value){
                totalCtrl.tipChange(value!);
              },
              selectedVal: totalCtrl.tipPercentage,
            ),
            TipRadioButton(
              title: '18%',
              value: 0.18,
              onChanged:(value){
                totalCtrl.tipChange(value!);
              },
              selectedVal: totalCtrl.tipPercentage,
            ),
            TipRadioButton(
              title: '20%',
              value: 0.20,
             onChanged:(value){
                totalCtrl.tipChange(value!);
              },
              selectedVal: totalCtrl.tipPercentage,
            ),
            Gap(20.h),
            Center(
              child: CommonButtonWidget(width: 200.w,height: 40.h,
                onPressed: totalCtrl.calculateTotal, text: 'Calculate total'),),
            
            Gap(20.h),
            Center(
              child: KStyles().med17(
                text: 'Total Amount: \$${totalCtrl.totalAmount.toStringAsFixed(2)}'),
            ),
          ],
        );
      })
      ),);
  }
}