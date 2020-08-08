import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_dependency_injection/injections/injection.dart';

import 'configs/env.dart';
import 'pages/home_page.dart';
import 'providers/data_provider.dart';

void main() {
  configureInjection(Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<DataProvider>(
      create: (context) => getIt<DataProvider>(),
      child: MaterialApp(
        title: "Belajar Dependency Injection",
        home: HomePage(),
      ),
    );
  }
}
