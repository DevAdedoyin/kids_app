import 'package:flutter/material.dart';

void main() {
  runApp(KidsLearningApp());
}

class KidsLearningApp extends StatelessWidget {
  const KidsLearningApp({Key key = const Key('')}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink, accentColor: Colors.orange),
    );
  }
}
