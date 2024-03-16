import 'package:flutter/material.dart';
import 'package:reminder_app/screens/homepage.dart';
import 'package:reminder_app/views/home_view.dart';

void main() {
  runApp(const ReminderApp());
}

class ReminderApp extends StatelessWidget {
  const ReminderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      routes: {
        'HomePage'  : (context) =>  HomePage(),  
      },
    );
  }
}
