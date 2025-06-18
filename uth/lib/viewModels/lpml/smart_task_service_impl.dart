import 'dart:convert';
import 'package:uth/models/smart_task.dart';
import 'package:uth/models/data.dart'; // <- Đảm bảo bạn đã import Data
import 'package:uth/viewModels/smart_task_serivce.dart';
import 'package:http/http.dart' as http;

class SmartTaskServiceImpl implements SmartTaskService {
  final String baseUrl = 'https://amock.io/api/researchUTH/tasks';

  @override
  Future<List<Data>> getAllData() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final smartTask = SmartTask.fromJson(jsonData);
      return smartTask.data;
    } else {
      throw Exception('Failed to load SmartTasks: ${response.statusCode}');
    }
  }
}