import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:tasksobes/bloc/home_bloc.dart';class DetailPage extends StatelessWidget {  const DetailPage({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    final bloc = context.read<HomeBloc>().state.status == HomeStatus.night;    return Scaffold(      appBar: AppBar(        backgroundColor:bloc?Colors.white: Colors.black,        title: Text(          " Second  Page",          style: TextStyle(              color:!bloc?Colors.white: Colors.black          ),        ),      ),      body:  Container(        alignment: Alignment.center,        color: !bloc? Colors.black : Colors.white,        child: Text(          bloc ? "Hello World" : "ByeWorld",          style: TextStyle(fontSize: 25, color: !bloc ? Colors.white : Colors.black),        ),      ),);  }}