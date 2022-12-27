import 'package:flutter/material.dart';

import 'screens/projects.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ajinendra05',
      theme: ThemeData.dark().copyWith(
          iconTheme: const IconThemeData(
        color: Colors.black,
      )),
      // theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //     elevatedButtonTheme: elevatedButtonThemeData),
      home: const HomeScreen(),
      routes: {
        Project_Screen.routeName: (context) {
          return const Project_Screen();
        },
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
