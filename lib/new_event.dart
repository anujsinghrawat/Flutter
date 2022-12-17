import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Event"),
        backgroundColor: const Color.fromARGB(255, 160, 16, 185),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          
          children: [
            TextField(
              
              controller: _textEditingController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Color.fromARGB(255, 177, 33, 243))),
                prefixIcon: Icon(Icons.calendar_month_rounded),
                border: OutlineInputBorder(),
                labelText: 'Event',
              ),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                },
                child: Text("ADD"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        const Color.fromARGB(255, 160, 16, 185))),
              );
            }),
          ],
        ),
      ),
    );
  }
}
