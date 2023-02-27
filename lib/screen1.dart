import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[

  ];
  void setindex(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.factory_outlined),
                label: 'Screen 1',
                // backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp),
                label: 'Screen 2',
                // backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Screen 3',

              // backgroundColor: Colors.blue,

            ),

          ],
            selectedFontSize:17,
            unselectedFontSize: 15,
            showUnselectedLabels: false,
            showSelectedLabels: false,

            backgroundColor:Color.fromRGBO(55, 56, 86, 0.8),
            currentIndex: _selectedIndex,

            selectedItemColor: Colors.black,
            iconSize: 35,
            onTap: setindex,
            elevation:5
          ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/artboard2.jpg",
              fit: BoxFit.cover, filterQuality: FilterQuality.low),
          // Container(
          //   color: Colors.black.withOpacity(0.4),
          // ),
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Classify transiction",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 27),
                            ),
                          ),
                          Container(
                            child: Text(
                              "classefiy transection into a\nperticlur catagery",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      margin: EdgeInsets.only(left: 25),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    //   getcont(),
                    // getcont(),
                    // getcont(),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-circled-menu-48.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Genrale",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                // ImageIcon(AssetImage("assets/images/i2.png")),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-fiat-500-48.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Transport",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-shopping-cart-64.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Shopping",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-file-64.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Billes",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-movie-64.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Entertenment",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          )),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(40),
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black26.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                            "assets/images/icons8-grocery-64.png",
                                          )),
                                      width: 150,
                                      height: 150,
                                    )),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text("Grocory",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle))),
                              ],
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
