import 'package:bank_apps_ui/pages/home_page.dart';
import 'package:bank_apps_ui/pages/sign_up_page.dart';
import 'package:bank_apps_ui/pages/succes_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SuccesPage(),
    );
  }
}
