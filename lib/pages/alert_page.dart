import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Page'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.build),
            onPressed: () {
              Navigator.pop(context);
            }));
  }
}
