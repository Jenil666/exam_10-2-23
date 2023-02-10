import 'dart:js';

import 'package:exam_feb_ten/Screens/1.Homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: ,
      routes: {
        '/':(context)=>HomeScreen(),
      },
    )
  );
}