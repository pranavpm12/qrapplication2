import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


void main() {
  runApp(qrpage());
}

class qrpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal, // Set the background color
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.account_circle_rounded, // Circle icon
                  size: 40.0,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 20.0),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your 'Scan' button functionality here
                },
                child: Text('Scan'), // Button title
              ),
            ],
          ),
        ),
      ),
    );
  }
}
