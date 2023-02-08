import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [Container(color: Colors.deepPurple,),
          Column(
            children: [
              Container(decoration: BoxDecoration(color: Colors.pinkAccent,borderRadius: BorderRadiusDirectional.circular(25),),height: 200,width: 200,),
            ],
          )
        ],
      ),
    ));
  }
}
