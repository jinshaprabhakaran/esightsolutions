import 'package:esightsolutions/global/constants/widgets/common_button.widget.dart';
import 'package:esightsolutions/global/constants/widgets/textfield.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../global/constants/styles/colors.dart';
import '../../../global/constants/styles/text_styles.dart';
import '../widget/tip_radiobutton.widget.dart';
class TotalAmountScreen extends StatefulWidget {
  const TotalAmountScreen({super.key});

  @override
  State<TotalAmountScreen> createState() => _TotalAmountScreenState();
}

class _TotalAmountScreenState extends State<TotalAmountScreen> {
  TextEditingController totalController = TextEditingController(); 
  double tipPercentage = 0.0;
  double totalAmount = 0.0; 
  @override
  void initState() {
    super.initState();
    tipPercentage = 0.0;
    totalAmount = 0.0;
    totalController.clear();
  }

   calculateTotal() {
    double amount = double.tryParse(totalController.text) ?? 0.0;
    setState(() {
      totalAmount = amount + (amount * tipPercentage); 
    });
  }

   tipChange(double value) {
    setState(() {
      tipPercentage = value; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kIsWeb ? kGrey.shade100 : kGrey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.sp),
        child: AppBar(
          backgroundColor: kIsWeb ? kGrey.shade100 : kGrey.shade200,
          leading: IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kBlack.withOpacity(0.7)),
          ),
          title: KStyles().semiBold20(text: 'Total Amount'),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30.h),
            KStyles().semiBold17(text: 'Calculate Total Amount'),
            Gap(10.h),
            KStyles().med16(text: 'Enter total amount'),
            Gap(10.h),
            TextFieldWidget(
              keyboardType: TextInputType.number,
              hintText: '1000',
              readOnly: false,
              boxHeight: 40,
              textAlign: TextAlign.left,
              textColor: kBlack,
              textEditingController: totalController,
              borderColor: kWhite,
              borderRadius: 20,
            ),
            Gap(20.h),
            KStyles().med16(text: 'Select tip percentage'),
            TipRadioButton(
              title: '10%',
              value: 0.10,
              onChanged: (value) {
                tipChange(value!); 
              },
              selectedVal: tipPercentage,
            ),
            TipRadioButton(
              title: '20%',
              value: 0.20,
              onChanged: (value) {
                tipChange(value!);
              },
              selectedVal: tipPercentage,
            ),
            TipRadioButton(
              title: '25%',
              value: 0.25,
              onChanged: (value) {
                tipChange(value!); 
              },
              selectedVal: tipPercentage,
            ),
            Gap(20.h),
            Center(
              child: CommonButtonWidget(
                width: kIsWeb ? 400.h : 200.w,
                height: kIsWeb ? 70.h : 40.h,
                onPressed: calculateTotal,
                text: 'Calculate total',
              ),
            ),
            Gap(20.h),
            Center(
              child: KStyles().med17(
                text: 'Total Amount: ₹${totalAmount.toStringAsFixed(2)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
