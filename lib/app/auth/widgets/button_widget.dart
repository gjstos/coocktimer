import 'package:coocktimer/app/core/models/themes/color_scheme_model.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var label = "";
  var _model = ColorSchemeModel();

  Button({
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: _model.lightLinearGradient,
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => HomePage(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
