import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_learning_app/screens/alphabet_screen.dart';
import 'package:kids_learning_app/screens/generic_detail_screen.dart';
import './screens/main_screen.dart';

void main() {
  runApp(KidsLearningApp());
}

class KidsLearningApp extends StatelessWidget {
  const KidsLearningApp({Key key = const Key('')}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Learning (Offline)',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.orange,
      ),
      home: MainScreen(),
      routes: {
        GenericDetailScreen.routeName: (_) => GenericDetailScreen(),
        AlphabetScreen.routeName: (_) => AlphabetScreen()
      },
    );
  }
}
