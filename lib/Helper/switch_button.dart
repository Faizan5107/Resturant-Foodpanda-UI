import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch Button Example'),
        ),
        body: Center(
          child: SwitchButton(),
        ),
      ),
    );
  }
}

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text('Switch State: $_switchValue'),
        Switch(
          activeColor: Colors.pink,
          inactiveThumbColor: Colors.grey,
          // trackOutlineColor:MaterialStateProperty.all(Colors.grey) ,
          // trackColor: MaterialStateProperty.all(Colors.white) ,
          inactiveTrackColor: Colors.white,
          // activeTrackColor: Colors.white,
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ],
    );
  }
}
