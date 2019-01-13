import 'package:flutter/material.dart';

class FirstPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Second Page',
          style: new TextStyle(fontSize: 25.0, color: Colors.purple),
        ),
      ),
    );
  }
}
