import 'package:flutter/material.dart';

class ColumnDetail extends StatelessWidget {
  const ColumnDetail({super.key});

  Widget buildBox({Color color = Colors.lightBlueAccent}) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column", style: TextStyle(color: Colors.blue)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildBox(),
              const SizedBox(height: 10),
              buildBox(),
              const SizedBox(height: 10),
              buildBox(),
              const SizedBox(height: 10),
              buildBox(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
