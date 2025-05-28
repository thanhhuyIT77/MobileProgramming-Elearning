import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {
  const TextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Detail",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),), centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 24, color: Colors.black),
              children: [
                TextSpan(text: 'The '),
                TextSpan(
                  text: 'quick ',
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                TextSpan(
                  text: 'Brown\n',
                  style: TextStyle(color: Colors.brown, fontSize: 32),
                ),
                TextSpan(text: 'fox j u m p s '),
                TextSpan(
                  text: 'over\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'the ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: 'lazy ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(text: 'dog.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
