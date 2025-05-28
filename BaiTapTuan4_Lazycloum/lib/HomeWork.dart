import 'package:flutter/material.dart';
import 'package:baitaptuan2/display/imageDetail.dart';
import 'package:baitaptuan2/display/textDetail.dart';
import 'package:baitaptuan2/input/passwordDetail.dart';
import 'package:baitaptuan2/input/textFieldDetail.dart';
import 'package:baitaptuan2/layout/columnDetail.dart';
import 'package:baitaptuan2/layout/rowDetail.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  Widget buildCard(
    String title,
    String subtitle, {
    Color color = Colors.lightBlueAccent,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UI Components List",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Display',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            buildCard(
              "Text",
              "Display text",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TextDetail()),
                );
              },
            ),
            buildCard(
              "Image",
              "Display an image",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImageDetail()),
                );
              },
            ),
            const Text(
              'Input',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            buildCard("TextField", "Input field for text", onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextFieldDetail()),
              );
            }),
            buildCard(
              "PasswordField",
              "Input field for password",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const passwordDetail()),
                );
              },
            ),
            const Text(
              'Layout',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            buildCard("Column", "Arranges elements vertically", onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColumnDetail()),
              );
            }),
            buildCard("Row", "Arranges elements horizontally", onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RowDetail()),
              );
            }),
            buildCard(
              "Tự tìm hiểu",
              "Tìm ra tất cả các thành phần UI Cơ bản",
              color: Colors.red.shade500,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
