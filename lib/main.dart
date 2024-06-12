import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';

import 'package:movie_ticket_app/src/modules/home/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: DarkTheme.darkerBackground,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: DarkTheme.white,
          bodyColor: DarkTheme.white,
        ),
      ),
      home: HomePage(),
    );
  }
}


