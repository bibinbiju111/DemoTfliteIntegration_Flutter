import 'package:flutter/material.dart';
import 'dart:io';

class DisplayImageScreen extends StatelessWidget {
  final String imagePath;

  DisplayImageScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prediction',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10), // Reduced space between the text and the image
          Text(
            'The selected image is',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0), // Added vertical padding
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height:
                      MediaQuery.of(context).size.width * 0.8, // Square size
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.file(
                      File(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
