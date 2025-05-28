import 'package:flutter/material.dart';
import 'package:baitaptuan2/LazyColum/Detail.dart';

class LazyColumn extends StatelessWidget {
  const LazyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(
      1000000,
          (index) => '${(index + 1).toString().padLeft(2, '0')} | The only way to do great work is to love what you do.',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LazyColumn',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlue[100],
            margin: const EdgeInsets.symmetric(vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Text(
                items[index],
                style: const TextStyle(fontSize: 14),
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.black),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Detail()),
                      (route) => false,
                );
              },

            ),
          );
        },
      ),
    );
  }
}