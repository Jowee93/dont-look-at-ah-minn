import 'package:flutter/material.dart';
import '../constants.dart';

class EyeBall extends StatelessWidget {
  EyeBall({this.controller});

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(5.0),
        height: kEyeHeight,
        width: kEyeWidth,
        decoration: BoxDecoration(
          color: kWords[1] == 'So... tired...' ? Colors.red[50] : Colors.white,
          border: Border.all(
            color: Colors.black54,
          ),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.topCenter,
        child: Transform.rotate(
          angle: controller.value,
          origin: Offset(
            0.0,
            kEyeBallOrigin_dy,
          ),
          child: Container(
            child: Text(''),
            height: kEyeBallHeight,
            width: kEyeBallWidth,
            decoration: BoxDecoration(
              color: Colors.black54,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
