import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/core/api/dio_consumer.dart';
import 'package:reminder_app/cubit/user_cubit.dart';
import 'package:reminder_app/screens/homepage.dart';
import 'package:reminder_app/views/home_view.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => UserCubit(DioConsumer(dio: Dio())),
      child: const ReminderApp(),
    ),
    );
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
