import 'package:esightsolutions/global/constants/styles/text_styles.dart';
import 'package:flutter/material.dart';
class TipRadioButton extends StatelessWidget {
  const TipRadioButton({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged, 
    required this.selectedVal,
  });

  final String title;
  final double value;
  final double selectedVal;
  final ValueChanged<double?> onChanged; 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: KStyles().med15(text: title),
      leading: Radio<double>(
        value: value,
        groupValue: selectedVal,
        onChanged:onChanged,
      ),
    );
  }
}
