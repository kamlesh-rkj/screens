import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
var api_url="https://630c75d083986f74a7c16274.mockapi.io/animal";
class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        leading: Center(child: BackButton(color: Colors.white,)),
        title: Center(child: Text("Bitcoin Alert",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)),
        actions: <Widget>[Center(child: Icon(Icons.add))],
        backgroundColor:Color.fromRGBO(15, 18, 23, 1),
      ),
      backgroundColor: Color.fromRGBO(15, 18, 23, 1),

      bottomNavigationBar:  PandaBar(
    buttonData: [
    PandaBarButtonData(
    id: 'Grey',
        icon: Icons.dashboard,
        title: 'Grey'
    ),
        PandaBarButtonData(
            id: 'Blue',
            icon: Icons.book,
            title: 'Blue'
        ),
        PandaBarButtonData(
            id: 'Red',
            icon: Icons.account_balance_wallet,
            title: 'Red'
        ),
        PandaBarButtonData(
            id: 'Yellow',
            icon: Icons.notifications,
            title: 'Yellow'
        ),
        ],
        onChange: (id) {
      setState(() {
        var page = id;
      });
    },
    onFabButtonPressed: () {

    },
    ),
      body: FutureBuilder(builder: (context, snapshot) {
        if(snapshot.hasData){
          return Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(

                  color: Colors.transparent,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          // margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 0.5)),
                          child: Card(

                            color: Color.fromRGBO(21, 24, 31, 1),
                            // shape: CircleBorder(side: BorderSide(style: BorderStyle.solid,color: Colors.white)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str1'],style: TextStyle(color: Colors.grey,fontSize: 15)),Text(snapshot.data![1]['str1_1'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20))]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white),)
                                      ],
                                    ),),
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    // decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str2'],style: TextStyle(color: Colors.grey,fontSize: 15),),Text(snapshot.data![1]['str2_2'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),)]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white,),)
                                      ],
                                    ),),
                                ]),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 0.5)),
                          child: Card(

                            color: Color.fromRGBO(151,69,253,1),
                            // shape: CircleBorder(side: BorderSide(style: BorderStyle.solid,color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text(snapshot.data![1]['str3'],style: TextStyle(color: Colors.grey,fontSize: 15)),Text(snapshot.data![1]['str3_3'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20))]),
                                              Center(child: Icon(Icons.arrow_drop_down,color: Colors.white),)
                                            ],
                                          ),),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          // decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text(snapshot.data![1]['str4'],style: TextStyle(color: Colors.grey,fontSize: 15),),Text(snapshot.data![1]['str4_4'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),)]),
                                              Center(child: Icon(Icons.arrow_drop_down,color: Colors.white,),)
                                            ],
                                          ),),
                                      ]),
                                  Container(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.white)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.delete_outline,color: Colors.white,),Text("  Delete  " ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)],),),
                                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.white)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.sports_baseball_sharp,color: Colors.white,),Text("  Active  " ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)],),),
                                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.white)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Icon(Icons.pause_circle_outline,color: Colors.white,),Text("  Pause  " ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)],),),
                                      ],),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),

                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 0.5)),
                          child: Card(

                            color: Color.fromRGBO(21, 24, 31, 1),
                            // shape: CircleBorder(side: BorderSide(style: BorderStyle.solid,color: Colors.white)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str5'],style: TextStyle(color: Colors.grey,fontSize: 15)),Text(snapshot.data![1]['str5_5'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20))]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white),)
                                      ],
                                    ),),
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    // decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str6'],style: TextStyle(color: Colors.grey,fontSize: 15),),Text(snapshot.data![1]['str6_6'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),)]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white,),)
                                      ],
                                    ),),
                                ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(2),border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 0.5)),
                          child: Card(

                            color: Color.fromRGBO(21, 24, 31, 1),
                            // shape: CircleBorder(side: BorderSide(style: BorderStyle.solid,color: Colors.white)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str7'],style: TextStyle(color: Colors.grey,fontSize: 15)),Text(snapshot.data![1]['str7_7'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20))]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white),)
                                      ],
                                    ),),
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    // decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,style:BorderStyle.solid,width: 2))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [Text(snapshot.data![1]['str8'],style: TextStyle(color: Colors.grey,fontSize: 15),),Text(snapshot.data![1]['str8_8'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),)]),
                                        Center(child: Icon(Icons.arrow_drop_down,color: Colors.white,),)
                                      ],
                                    ),),
                                ]),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                  flex:2,
                  child: Container(child: Padding(
                    padding: const EdgeInsets.only(right: 5,left: 5),
                    child: Center(child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border:Border.all(color: Colors.white)),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.pause_circle_filled_outlined,color: Colors.white,),
                        ),Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Pause All Alert",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                        )],),)),
                  )))
            ],
          );
        }
        else{
          return CircularProgressIndicator();
        }
      },future: getd(),),
    ));
  }
  Future<List> getd() async {
    var data = await http.get(Uri.parse(api_url));
    return jsonDecode(data!.body);
  }
}
