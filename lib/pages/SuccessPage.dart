import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String message;

  SuccessPage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(height: 16),
              Text(
                'SUCCESS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green.shade300,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.green.shade300,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
