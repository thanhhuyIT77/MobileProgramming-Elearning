import 'package:flutter/material.dart';

class TextFieldDetail extends StatefulWidget {
  const TextFieldDetail({super.key});

  @override
  State<TextFieldDetail> createState() => _TextFieldDetailState();
}

class _TextFieldDetailState extends State<TextFieldDetail> {
  String inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField", style: TextStyle(color: Colors.blue)),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Thông tin nhập",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                onChanged: (value) {
                  setState(() {
                    inputText = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              Text(
                inputText.isEmpty
                    ? "Tự động cập nhật dữ liệu theo textfield"
                    : inputText,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
