import 'package:flutter/material.dart';
import 'package:yepa/app/app.dart';
import 'package:yepa/app/di/service_locator.dart';
import 'package:yepa/providers/firebase_provider.dart';

void main() {
  FirebaseProvider.initialize();
  initializeLocator();
  runApp(const App());
}
