import 'package:flutter/material.dart';
import 'upload_image.dart'; // Import the screen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UploadImageScreen(), // Set UploadImageScreen as the home
    );
  }
}
