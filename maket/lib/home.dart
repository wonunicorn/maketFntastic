import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maket/components/sideBarMenu.dart';
import 'constants.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kmainColor,
        title: Text(
          'Настройки'.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      drawer: SideBarMenu(),
      body: Builder(
        builder: (context) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kmainColor,
              ),
              child: Text(
                'Открыть Drawer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        }
      ),
    );
  }
}
