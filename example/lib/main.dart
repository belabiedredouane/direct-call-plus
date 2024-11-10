import 'package:flutter/material.dart';
import 'package:direct_call_plus/direct_call_plus.dart';

void main() => runApp(const MyApp());

/// MyApp
class MyApp extends StatefulWidget {
  /// MyApp contructor
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "213441256987";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Direct call example app'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text("Test Call"),
              onPressed: () async {
                DirectCallPlus.makeCall(_numberCtrl.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
