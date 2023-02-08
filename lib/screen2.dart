import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

  @override
  State<Screen2> createState() => _Screen2State();

}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Widget> w=[
      Text("page1"),
      Text("page2")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("nevigation demo")),

        drawer: Drawer(

            child:ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(child: Container(child:Row(children: [Expanded(child: Container(child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png"),))]),),
                    decoration: BoxDecoration(color: Colors.tealAccent.shade100,
                    ),
                ),
                ListTile(
                  title: Text("screen1"),
                  focusColor: Colors.amber,
                  onTap: ()=>{
                      Navigator.pop(context)
                  },
                ),
                ListTile(
                  title: Text("demo"),
                )

              ],
            )
        ),
      ),
    );
  }
}
