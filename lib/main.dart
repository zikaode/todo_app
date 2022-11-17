import 'package:flutter/material.dart';
import 'package:todo_app/screen/splash-screen.dart';
import 'package:todo_app/screen/home-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 4)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(primaryColor: Colors.blue),
              home: const HomePage(),
            );
          }
        });
  }
}
