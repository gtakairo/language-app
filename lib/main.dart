import 'package:flutter/material.dart';
import '../screens/language_learning_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '言語学習アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageLearningPage(),
    );
  }
}