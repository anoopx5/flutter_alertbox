// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertBox"),
        centerTitle: true,
      ),
      body: Center(
          child: FlatButton(
        onPressed: () {
          ShowAlert(context);
        },
        child: Text('Click Me'),
        color: Colors.yellow,
      )),
    );
  }

  void ShowAlert(BuildContext context) {
    Widget Okbtn = FlatButton(
      child: Text('Ok'),
      onPressed: () {
        print("Pressed Ok");
      },
    );
    Widget Canbtn = FlatButton(
        child: Text('Cancel'),
        onPressed: () {
          print('Pressed Cancel');
        });
    AlertDialog alert = AlertDialog(
      title: Text('Warning!'),
      content: Text('This an Example of Alert Dialog Box'),
      actions: <Widget>[Okbtn, Canbtn],
    );
    showDialog(
        context: context,
        builder: (BuildContext BuildContext) {
          return alert;
        });
  }
}
