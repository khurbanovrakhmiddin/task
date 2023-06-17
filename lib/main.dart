import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasksobes/bloc/home_bloc.dart';
import 'package:tasksobes/page/main_page.dart';
import 'package:tasksobes/page/HomePage.dart';

import 'db_service.dart';

void main() async{
  await Repository.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sobes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(create: (BuildContext context)=>HomeBloc()..add(InitEvent()),child:const Home(),),
    );
  }
}
