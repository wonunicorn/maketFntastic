import 'package:flutter/material.dart';
import 'package:maket/constants.dart';

class RaisedButtonContext extends StatelessWidget {
  RaisedButtonContext({this.color, this.press, this.pressCheckBox, this.value, this.text});
  Color color;
  Function press;
  Function(bool) pressCheckBox;
  bool value;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: RaisedButton(
        color: color,
        onPressed: press,
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.white,
              checkColor: kblue,
              value: value,
              side: BorderSide(color: Colors.white),
              onChanged: pressCheckBox,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
