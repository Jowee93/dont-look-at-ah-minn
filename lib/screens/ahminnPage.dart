import 'package:flutter/material.dart';
import '../components/eye_ball.dart';
import '../components/ahminn_body.dart';
import 'dart:math';
import '../constants.dart';

// import 'ahminn.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController controller;
  AnimationController controller2;
  AnimationController opacityAnim;
  double currentPosition = 0.0;
  Animation animation;

  void moveEyeBallTopCon() {
    List<double> angleList = [piBottom, piLeft, piRight];
    kWords.shuffle();

    if (currentPosition == 6.283185307179586) {
      currentPosition = 0.0;
    }

    if (currentPosition == 0.0) {
      controller2 = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
        upperBound: (angleList..shuffle()).first,
      );

      controller2.forward(from: currentPosition);
      opacityAnim.forward(
        from: 0.0,
      );

      controller2.addListener(() {
        setState(() {});
        print(controller2.value);
      });

      controller2.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          currentPosition = controller2.value;
          print('Current position is : $currentPosition');
          print('Current opactiy is : ${opacityAnim.value}');
        }
      });
    }
  }

  void moveEyeBallLeftCon() {
    List<double> angleList = [piBottom, piTop, piRight];
    angleList.shuffle();

    kWords.shuffle();

    if (currentPosition == 6.283185307179586) {
      currentPosition = 0.0;
    }

    if (currentPosition == 4.71238898038469) {
      controller2 = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
        lowerBound: angleList.first == piBottom
            ? piBottom
            : angleList.first == piRight ? piRight : 0.0,
        upperBound: pi * 2,
      );

      if (angleList.first > currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.forward(from: currentPosition);
      } else if (angleList.first < currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.reverse(from: currentPosition);
      }

      opacityAnim.forward(
        from: 0.0,
      );

      opacityAnim.addListener(() {
        setState(() {});
      });

      controller2.addListener(() {
        setState(() {});
        print(controller2.value);
      });

      controller2.addStatusListener((status) {
        if (status == AnimationStatus.completed ||
            status == AnimationStatus.dismissed) {
          currentPosition = controller2.value;
          print('Current position is : $currentPosition');
          print('Current opactiy is : ${opacityAnim.value}');
        }
      });
    }
  }

  void moveEyeBallRightCon() {
    List<double> angleList = [piBottom, piTop, piLeft];
    angleList.shuffle();

    kWords.shuffle();

    if (currentPosition == 6.283185307179586) {
      currentPosition = 0.0;
    }

    if (currentPosition == 1.5707963267948966) {
      controller2 = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
        lowerBound: 0.0,
        upperBound: angleList.first == piBottom
            ? piBottom
            : angleList.first == piLeft ? piLeft : piTop,
      );

      if (angleList.first > currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.forward(from: currentPosition);
      } else if (angleList.first < currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.reverse(from: currentPosition);
      }

      opacityAnim.forward(
        from: 0.0,
      );

      opacityAnim.addListener(() {
        setState(() {});
      });

      controller2.addListener(() {
        setState(() {});
        print(controller2.value);
      });

      controller2.addStatusListener((status) {
        if (status == AnimationStatus.completed ||
            status == AnimationStatus.dismissed) {
          currentPosition = controller2.value;
          print('Current position is : $currentPosition');
          print('Current opactiy is : ${opacityAnim.value}');
        }
      });
    }
  }

  void moveEyeBallBotCon() {
    List<double> angleList = [piRight, piTop, piLeft];
    angleList.shuffle();

    kWords.shuffle();

    if (currentPosition == 6.283185307179586) {
      currentPosition = 0.0;
    }

    if (currentPosition == 3.141592653589793) {
      controller2 = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
        lowerBound: angleList.first == piRight ? piRight : 0.0,
        upperBound: angleList.first == piLeft
            ? piLeft
            : angleList.first == piTop ? piTop : piTop,
      );

      if (angleList.first > currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.forward(from: currentPosition);
      } else if (angleList.first < currentPosition) {
        print('CurrentPosition is : $currentPosition');
        controller2.reverse(from: currentPosition);
      }

      opacityAnim.forward(
        from: 0.0,
      );

      opacityAnim.addListener(() {
        setState(() {});
      });

      controller2.addListener(() {
        setState(() {});
        print(controller2.value);
      });

      controller2.addStatusListener((status) {
        if (status == AnimationStatus.completed ||
            status == AnimationStatus.dismissed) {
          currentPosition = controller2.value;
          print('Current position is : $currentPosition');
          print('Current opactiy is : ${opacityAnim.value}');
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: pi,
    );

    controller2 = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: pi,
    );

    opacityAnim = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dont Look At Ah Minn !'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: moveEyeBallTopCon,
                child: Container(
                  color: Colors.lightBlueAccent[50],
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'This is Ah Minn. \n \n Ah Minn does not like it when people look at her. \n \n Tap on the direction she is looking at \n to make eye contact.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.bottomCenter,
                    //   end: Alignment.topLeft,
                    //   colors: [Color(0xFF6DD5FA), Color(0xFFFFFFFF)],
                    // ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: moveEyeBallLeftCon,
                    child: Container(
                      height: 200.0,
                      child: Center(),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Positioned(
                      child: AhMinnBody(),
                    ),
                    Positioned(
                      top: 45.0,
                      left: 55.0,
                      child: EyeBall(controller: controller2),
                    ),
                    Positioned(
                      top: 55.0,
                      right: 70.0,
                      child: EyeBall(controller: controller2),
                    ),
                  ],
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: moveEyeBallRightCon,
                    child: Container(
                      height: 200.0,
                      child: Center(),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GestureDetector(
                onTap: moveEyeBallBotCon,
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Container(
                      width: 300.0,
                      child: Text(
                        kWords[1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red.withOpacity(opacityAnim.value),
                          fontSize: 18.0,
                          fontFamily: 'IndieFlower',
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                  )),
                ),
              ),
            ),
            // RaisedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => Ahminn()),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
