import 'package:flutter/material.dart';
import 'package:baitaptuan2/tuan2.dart';
/*import 'package:baitaphangtuan/BTvenha/venha1.dart';*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Practice2());
    /*   return MaterialApp(title: 'Flutter Demo', home: PracticeWeek2());*/
  }
}