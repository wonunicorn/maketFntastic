import 'package:flutter/material.dart';
import 'package:maket/constants.dart';

class DropDownMenu extends StatelessWidget {
  DropDownMenu({this.listItems, this.initialValue, this.press});

  String initialValue;
  List<String> listItems;
  Function(String) press;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: DropdownButtonFormField(
        value: initialValue,
        decoration: InputDecoration(
          filled: true,
          fillColor: ksideBarColor,
        ),
        style: TextStyle(
            color: Colors.white,
            fontSize: 16
        ),
        icon: const Icon(Icons.keyboard_arrow_down),
        items: listItems.map((String items){
          return DropdownMenuItem(
              value: items,
              child: Text(items));
        }).toList(),
        onChanged: press,
      ),
    );
  }
}
