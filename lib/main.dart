import 'package:exam_feb_ten/Screens/1.Homescreen.dart';
import 'package:exam_feb_ten/Screens/DataEntry.dart';
import 'package:exam_feb_ten/Screens/Logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: ,
      routes: {
        '/':(context)=>Logo(),
        'dataent':(context)=>DataEntry(),
        'homescreen':(context)=>HomeScreen(),
      },
    )
  );
}