import 'package:flutter/material.dart';
import '../components/ahminn_body.dart';

class Ahminn extends StatefulWidget {
  @override
  _AhminnState createState() => _AhminnState();
}

class _AhminnState extends State<Ahminn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ah Minn'),
      ),
      body: Column(
        children: <Widget>[
        
          AhMinnBody(),
        ],
      ),
    );
  }
}
