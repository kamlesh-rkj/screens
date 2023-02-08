import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bacgroundscreen.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.low),
          Container(color: Colors.transparent.withOpacity(0.25),),
          Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                          child: Text("Classify transiction",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize:27),),
              ),
                          Container(child: Text("classefiy transection into a\nperticlur catagery",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize:17),),)
                        ],
                      ),
                    ],
                  ),
                ),Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      //   getcont(),
                      // getcont(),
                      // getcont(),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-circled-menu-48.png",)),width: 150,height:150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Genrale",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold )),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),)),
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                // ImageIcon(AssetImage("assets/images/i2.png")),
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-fiat-500-48.png",)),width: 150,height: 150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Transport",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-shopping-cart-64.png",)),width: 150,height: 150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Shopping",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),)),
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-file-64.png",)),width: 150,height: 150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Billes",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-movie-64.png",)),width: 150,height: 150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Entertenment",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),)),
                            Expanded(child: Container(padding: EdgeInsets.all(40),margin: EdgeInsets.fromLTRB(10, 5, 10, 5),decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.black26.withOpacity(0.2),), child: Column(
                              children: [
                                Expanded(flex: 4,child: Container(child: CircleAvatar(backgroundColor: Colors.transparent,child:Image.asset("assets/images/icons8-grocery-64.png",)),width: 150,height: 150,)),
                                Expanded(child: Container(margin: EdgeInsets.only(top: 5),child:Text("Grocory",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold)),decoration: BoxDecoration(shape: BoxShape.circle))),
                              ],
                            ),))
                          ],
                        ),
                      )
                    ],
                  ),
                )],
          ),
        ],
      ),
    ));
  }

}
