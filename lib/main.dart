import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlexibleWidget"),
        ),
        body: FlexibleWidget(),
      ),
    );
  }
}

class BlueBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all()
      ),

    );
  }

}

class FlexibleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Row(
     children: <Widget>[
     
       Flexible(
         child: BlueBox(),
         flex: 2,
         fit: FlexFit.tight,
       ),
        Flexible(
         child: BlueBox(),
         flex: 1,
         fit: FlexFit.tight,
       ),
        Flexible(
         child: BlueBox(),
         flex: 1,
         fit: FlexFit.tight,
       )
     ],
   );
  }

}