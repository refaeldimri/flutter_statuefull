import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  String label = "";
  void _changeLabel() {
    setState(() {
      label = nameController.text;
    });
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app-change label'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'insert label',
                ),
              ),
            ),
            const Text(
              '',
            ),
            Text(
              '$label',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () { 
                _changeLabel();
              },
              child: Text('change label'),
            ),

          ],
        )
      )
    );
  }
}