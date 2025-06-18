import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uth/views/smart_uth_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTH Smart Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SmartUthScreen(), 
    );
  }
}
