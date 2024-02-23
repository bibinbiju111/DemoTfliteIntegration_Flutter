// import 'package:flutter/material.dart';
// import 'dart:io';

// class DisplayImageScreen extends StatelessWidget {
//   final String imagePath;

//   DisplayImageScreen({required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Prediction',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 10), // Reduced space between the text and the image
//           Text(
//             'The selected image is',
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                   vertical: 8.0), // Added vertical padding
//               child: Center(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   height:
//                       MediaQuery.of(context).size.width * 0.8, // Square size
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(8.0),
//                     child: Image.file(
//                       File(imagePath),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:io';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String label;
  final String imagePath;

  const ResultPage({Key? key, required this.label, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(
              File(imagePath),
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            label.isNotEmpty
                ? Text(
                    'Label: $label',
                    style: TextStyle(fontSize: 24),
                  )
                : Text(
                    'No result found for this image.',
                    style: TextStyle(fontSize: 24),
                  ),
          ],
        ),
      ),
    );
  }
}

