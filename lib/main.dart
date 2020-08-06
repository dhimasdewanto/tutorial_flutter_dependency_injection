import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'providers/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<DataProvider>(
      create: (context) => DataProvider(),
      child: MaterialApp(
        title: "Belajar Dependency Injection",
        home: HomePage(),
      ),
    );
  }
}
