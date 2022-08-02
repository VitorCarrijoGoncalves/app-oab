import 'package:flutter/material.dart';

class ShowTimePickerDemo extends StatefulWidget {
  @override
  _ShowTimePickerDemoState createState() => _ShowTimePickerDemoState();
}

class _ShowTimePickerDemoState extends State<ShowTimePickerDemo> {
  TimeOfDay pickedTime = TimeOfDay.now();

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? response = await showTimePicker(
      context: context,
      initialTime: pickedTime,
    );
    if (response != null && response != pickedTime) {
      setState(() {
        pickedTime = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pickedTime.toString()),
            SizedBox(height: 10),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  _selectTime(context);
                },
                child: Text("Show Time Pikcer"))
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
