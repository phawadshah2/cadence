import 'package:flutter/material.dart';

class CadenceApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cadence',
      home: Scaffold(body: Center(child: Text('Cadence'))),
    );
  }
}
