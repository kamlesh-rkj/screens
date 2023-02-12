import 'package:flutter/material.dart';
import 'package:screens/screen1.dart';
import 'package:screens/screen2.dart';
import 'package:screens/screen3.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Center(child: Text("  SCREEN  ")),),
      body: Column(
        children: [
          InkWell(onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen1())),child: Container(margin: EdgeInsets.all(10),color: Colors.greenAccent,child: Center(child: Text(" Scrren 1 ")),)),
          InkWell(onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2())),child: Container(margin: EdgeInsets.all(10),color: Colors.greenAccent,child: Center(child: Text(" Screen 2 ")),)),
          InkWell(onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3())),child: Container(margin: EdgeInsets.all(10),color: Colors.greenAccent,child: Center(child: Text("Screen 3 ")),)),
        ],
      ),
    ));
  }
}
