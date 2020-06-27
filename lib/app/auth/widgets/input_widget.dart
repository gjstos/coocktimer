import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new TextEditingController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(fontSize: 20),
    );
  }
}
