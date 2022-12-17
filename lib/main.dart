import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
    Text("Event1"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // foregroundColor: Color.fromARGB(2, 2, 0, 61),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 70, 124, 129),
          title: const Text(" ⚡Event Scheduler⚡ "),
        ),
        body: Container(
          color: Color(0xffDAF5FF),
          padding: EdgeInsets.all(50),
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _list.length,
              // itemBuilder: ((contex, index) => _list[index]),
              itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(8),
                height: 50,
                color: Color.fromARGB(255, 253, 219, 202),
                child: Center(child: _list[index]),
    );
  }
              ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(newText));
              });
            },
            backgroundColor: const Color.fromARGB(255, 160, 16, 185),
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
