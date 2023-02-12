import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Mon 21 Nov,2016",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        subtitle: StepperText("22 safar, 14:38 AM"),
        iconWidget: Container(
          // padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          // child: const Icon(Icons.looks_one, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Dhaka (+6)"
            ,textStyle: const TextStyle(
            color: Colors.grey,
            ),),
        // subtitle: StepperText("Your order is being prepared"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          // child: const Icon(Icons.looks_two, color: Colors.white),
        )),
    StepperData(
        title: StepperText("Notification",
          textStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        // subtitle: StepperText(
        //     "Our delivery executive is on the way to deliver your item"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          // child: const Icon(Icons.looks_3, color: Colors.white),
        )),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(title:Center(child: Text("islamic App")),backgroundColor: Color.fromRGBO(28, 44,59, 1)),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                  child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Expanded(child: Container(
                          // child: StepProgressIndicator(
                          //   fallbackLength: 15,
                          //   totalSteps:3,
                          //     direction: Axis.vertical,
                          //   currentStep: 1,
                          //   selectedColor: Colors.white,
                          //   unselectedColor: Colors.black38,
                          //   roundedEdges: Radius.circular(100),
                          //   selectedSize: 1,
                          //   unselectedSize:1,
                          //   blendMode: BlendMode.lighten,
                          //   stepMainAxisAlignment: MainAxisAlignment.start,
                          //   stepCrossAxisAlignment: CrossAxisAlignment.center,
                          // ),
                          child: AnotherStepper(
                            stepperList: stepperData,
                            stepperDirection: Axis.vertical,
                            iconWidth: 10, // Height that will be applied to all the stepper icons
                            activeIndex: 2,
                            activeBarColor: Colors.white,
                            inActiveBarColor: Colors.black38,
                            iconHeight: 10, // Width that will be applied to all the stepper icons
                          ),


                  )),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(right: 20,bottom: 50),
                    child:CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 10.0,
                      percent: 0.60,
                      center: Container(
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Text("Fair",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 2),),
                            Text(""),
                            Text("4:59 AM",style: TextStyle(color: Color.fromRGBO(0, 255, 0, 100),fontWeight: FontWeight.w900,fontSize:30 )),
                            Text(""),
                            Text("-4:50:32",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 2),)
                          ],
                        ),
                      ),
                      progressColor: Color.fromRGBO(0, 255, 0, 1),
                      backgroundColor: Colors.black12,



                    ),
                  ))
                ]),
                color: Color.fromRGBO(28, 44,59, 1),
              )),
              Expanded(
                flex: 3,
                  child: Container(
                color: Colors.white70,
              ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container(
                color: Colors.transparent,
              )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,left:10),
                  child: Card(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5,bottom: 2,top: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Expanded(
                                  child: Container(
                                    child: Icon(Icons.person_off,size: 50),
                                    decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                  ),
                                ),
                                Expanded(flex: 3,child: Text("    prayer\n    Learn how to prayer")),
                                Expanded(
                                  child: Container(
                                    child: Icon(Icons.arrow_forward_ios_sharp),
                                  ),
                                )

                              ],),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.menu_book,size: 50),
                                      decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                    ),
                                  ),
                                  Expanded(flex: 3,child: Text("    Quran\n    Learn all surha")),
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  )

                                ],),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.lock_clock_outlined,size: 50),
                                      decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                    ),
                                  ),
                                  Expanded(flex: 3,child: Text("    Qibila\n    Quibila detection anywere")),
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  )

                                ],),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.nearby_error_sharp,size: 50),
                                      decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                    ),
                                  ),
                                  Expanded(flex: 3,child: Text("    Nearby\n    Find the closest")),
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  )

                                ],),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.calendar_month_outlined,size: 50),
                                      decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                    ),
                                  ),
                                  Expanded(flex: 3,child: Text("    Calander\n    importent islamic event")),
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  )

                                ],),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.group,size: 50),
                                      decoration: BoxDecoration(border: Border(right:BorderSide(color: Colors.black12,width: 2,style: BorderStyle.solid))),
                                    ),
                                  ),
                                  Expanded(flex: 3,child: Text("    Community\n     join with other muslim")),
                                  Expanded(
                                    child: Container(
                                      child: Icon(Icons.arrow_forward_ios_sharp),
                                    ),
                                  )

                                ],),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    )
    );
  }
}
