import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState()=> _MyApp();
  }


class _MyApp extends State<MyApp>{
  final List<Widget> _list=[
    Text("Event1")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Event Scheduler"),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((contex,index)=>_list[index])),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder:(context)=> NewEventScreen()));
                setState(() {
                  _list.add(Text(newText));
                });
                },
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }

}

