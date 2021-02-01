import 'package:flutter/material.dart';
import 'package:provider_app/view/provider_BMI.dart';
class Counter extends ChangeNotifier {
  var _count = 0;
  int get getCounter {
    return _count;
  }
  // int set setCounter {
  //   return _count;
  // }

  void incrementCounter() {
    _count++;
    notifyListeners();
  }
  void decrementCounter() {
    _count--;
    notifyListeners();
  }
var result;
   double get getResult{
     return result;
}
  void calcBMI(TextEditingController height, TextEditingController weight) {


    double h = double.parse(height.text);
    double w = double.parse(weight.text);
    // We dived height by 100 because we are taking the height in centimeter
    // and formula takes height in meter.
    var weight1 = w * 10000;
    var height1 = h * 30.48;
    double heightSquare = height1 * height1;
    result = weight1/ heightSquare;
    // if(result<=18.5){
    //   msg="you are Underweight";
    // }
    // else if(result>=18.5 && result<=24.9){
    //   msg="you are Normal";
    // }
    // else if(result>=25 && result<=29.9) {
    //   msg = "you are Overweight";
    // }
    // else
    //   msg="Obesity";
    print(result);
    // print(msg);
    notifyListeners();
  }

}