import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/data.dart';
import 'package:provider_app/view/provider_BMI.dart';
class BmiCalc extends StatelessWidget{
  final height=TextEditingController();
  final weight=TextEditingController();
  var result=0.0;
  var msg="";

  var _value = 1.0;

  void calcBMI(BuildContext context) {
    Provider.of<Counter>(context, listen: false).calcBMI(height, weight);
  }
  //double _cal;// new variable defined for result

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    var counter = Provider.of<Counter>(context).getResult;
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Column(
          children: [
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your height in feet',
                ),
                controller: height,
              ),
              alignment: Alignment.center,
            ),
            Container(
              // color: Colors.lime,
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your weight',
                ),
                controller: weight,
              ),
              alignment: Alignment.center,
            ),
            RaisedButton(
              child: Text("calculate"),
              onPressed: ()=> calcBMI(context),
            ),
            SizedBox(height: 25),
            Text( "Your BMI: $counter",),
            Text("$msg"),
          ],
        ),
      ),
    );
  }
}

  // void decrementCounter() {
  //   _count--;
  //   notifyListeners();
  // }