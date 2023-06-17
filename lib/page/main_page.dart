import 'package:flutter/material.dart';
import 'package:tasksobes/db_service.dart';
import 'package:tasksobes/page/DetailPage.dart';
import 'package:tasksobes/page/HomePage.dart';
import 'package:tasksobes/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        HomePage(),
        DetailPage(),
      ],
    );
  }

}
