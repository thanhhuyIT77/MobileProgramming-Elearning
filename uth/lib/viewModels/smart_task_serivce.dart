import 'package:uth/models/smart_task.dart';

import '../models/data.dart';

abstract class SmartTaskService{
  Future<List<Data>> getAllData();
}