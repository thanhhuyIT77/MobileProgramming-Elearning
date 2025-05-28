import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  const ImageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/3/36/H%C3%ACnh_%E1%BA%A3nh_UTH.jpg",
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "https://upload.wikimedia.org/wikipedia/commons/3/36/H%C3%ACnh_%E1%BA%A3nh_UTH.jpg",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("assets/image/UTH.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "in app",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
