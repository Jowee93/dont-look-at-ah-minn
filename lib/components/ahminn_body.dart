import 'package:flutter/material.dart';
import '../constants.dart';

class AhMinnBody extends StatelessWidget {
  const AhMinnBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.white,
                      ),
                      height: kAhMinnHeight,
                      child: Image.asset('images/path-1.png'),
                    ),
                  ),
                  Positioned(
                    top: kLeftElipse['top'],
                    left: kLeftElipse['left'],
                    child: Container(
                      child: Image.asset('images/ellipse-1.png'),
                    ),
                  ),
                  Positioned(
                    top: kRightElipse['top'],
                    right: kRightElipse['right'],
                    child: Container(
                      child: Image.asset('images/ellipse-1.png'),
                    ),
                  ),
                  Positioned(
                    top: kMouth['top'],
                    left: kMouth['left'],
                    child: Container(
                      child: Image.asset('images/path-7.png'),
                    ),
                  ),
                  Positioned(
                    bottom: kLeftArm['bottom'],
                    right: kLeftArm['right'],
                    child: Container(
                      child: Image.asset('images/path-2.png'),
                    ),
                  ),
                  Positioned(
                    bottom: kLeftLeg['bottom'],
                    right: kLeftLeg['right'],
                    child: Container(
                      child: Image.asset('images/path-6.png'),
                    ),
                  ),
                  Positioned(
                    bottom: kRightLeg['bottom'],
                    left: kRightLeg['left'],
                    child: Container(
                      child: Image.asset('images/path-3.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
