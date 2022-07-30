import 'package:flutter/material.dart';
import 'pages/bookmarks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '27 Crags',
      home: BookmarksPage(),
    );
  }
}
