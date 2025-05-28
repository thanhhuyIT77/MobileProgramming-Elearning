import 'package:flutter/material.dart';

class passwordDetail extends StatelessWidget{
  const passwordDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password", style: TextStyle(color: Colors.blue)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "password",
                  filled: true,
                  fillColor:Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}