import 'package:cat_facts/application.dart';
import 'package:cat_facts/config/interceptors.dart';
import 'package:cat_facts/config/logger.dart';
import 'package:cat_facts/services/storage/storage.dart';
import 'package:flutter/material.dart';

void main() async {
  Logger.init(LocalLogger());
  WidgetsFlutterBinding.ensureInitialized();
  initInterceptors();
  await Storage.instance().init();
  runApp(const Application());
}
