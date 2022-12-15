import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Event"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
          ),
          Builder(
            builder: (context) {
              return ElevatedButton(onPressed: () {
                String newEventText=_textEditingController.text;
                Navigator.of(context).pop(newEventText);
              }, child: Text("Dabao"));
            }
          ),
        ],
      ),
    );
  }
}