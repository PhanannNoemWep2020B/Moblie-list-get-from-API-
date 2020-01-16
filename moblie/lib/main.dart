
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(App());
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Map<String , bool> values = {
    "JavaScript": false,
    "PHP": false,
    "Java": false,
  };
  //javaScript, PHP, java is key
  //false is values
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List CheckBox"),
        ),
        body: ListView(
          children: values.keys.map((String key){
            return CheckboxListTile(
              title: Text(key),
              value: values[key],
              onChanged: (bool value){
                setState(() {
                 values[key] = value;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}