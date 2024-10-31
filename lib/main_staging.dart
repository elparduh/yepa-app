import 'package:flutter/material.dart';
import 'package:yepa/app/app.dart';
import 'package:yepa/providers/firebase_provider.dart';

void main() {
  FirebaseProvider.initialize();
  runApp(const App());
}
