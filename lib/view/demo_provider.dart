import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/data.dart';
import 'package:provider_app/view/provider_BMI.dart';
class MyHomePage extends StatelessWidget {
  //final String title;
  //MyHomePage({this.title});
  void _incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }
  void _decrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).decrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
    return Scaffold(
      appBar: AppBar(
        // title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: ()=>_incrementCounter(context),
              //tooltip: 'Increment',
              child: Text("Add"),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: ()=>_decrementCounter(context),
              //tooltip: 'Increment',
              child: Text("Sub"),
            ),
            RaisedButton(
                child: Text("BMI"),
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>BmiCalc()),
                  );
                } //tooltip: 'Increment',
            ),
            // RaisedButton(
            //   onPressed: counter.decrement,
            //   //tooltip: 'Increment',
            //   child: Text("decre"),
            // )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _incrementCounter(context),
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
// class Counter extends ChangeNotifier {
//   var _count = 0;
//   int get getCounter {
//     return _count;
//   }
//   // int set setCounter {
//   //   return _count;
//   // }
//
//   void incrementCounter() {
//     _count++;
//     notifyListeners();
//   }
//   void decrementCounter() {
//     _count--;
//     notifyListeners();
//   }
// }