import 'package:flutter/material.dart';

import 'base_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF1CA2F0),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: BasePage(),
    );
  }
}
