import 'package:flutter/material.dart';

class TotalAmountController extends ChangeNotifier{
  TextEditingController total = TextEditingController();

   double tipPercentage = 0; 
  double totalAmount = 0; 

   calculateTotal() {
    final double amount = double.tryParse(total.text) ?? 0;
      totalAmount = amount + (amount * tipPercentage);
      notifyListeners();
    
  }

 tipChange(double value) {
  tipPercentage = value;
    notifyListeners();
  }
  onInit(){
    total.clear();
    totalAmount = 0.0;
    tipChange(0.0);
    tipPercentage = 0.0;
  }
}